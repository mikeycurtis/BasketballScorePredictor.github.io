#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pandas as pd
from bs4 import BeautifulSoup
import requests
import bs4
import json
from nba_api.stats.endpoints import leaguegamefinder
import time
from nba_api.stats.endpoints import BoxScoreAdvancedV2
from nba_api.stats.endpoints import BoxScoreTraditionalV2

# parameters for half-time stats: start_period=1, end_period=10, start_range=0, end_range=14400, range_type = 2


def get_single_game_df(game_id, game_matchup, game_date):
    # get adv boxscore for half time
    bs_adv_df = BoxScoreAdvancedV2(game_id=game_id, start_period=1, end_period=10,
                                   start_range=0, end_range=14400, range_type=2).get_data_frames()[1]
    # sleep so that we don't have issues with constantly hitting the endpoints
    time.sleep(0.6)
    # get trad boxscore for half time
    bs_trad_df = BoxScoreTraditionalV2(game_id=game_id, start_period=1, end_period=10,
                                       start_range=0, end_range=14400, range_type=2).get_data_frames()[1]
    time.sleep(0.6)
    bs_trad_df = bs_trad_df.rename(columns={'PTS': 'half_PTS'})
    # get final scores
    bs_trad_df_full = BoxScoreTraditionalV2(
        game_id=game_id).get_data_frames()[1]
    time.sleep(0.6)
    final_scores = bs_trad_df_full['PTS']
    final_scores = final_scores.rename('final_PTS')
    # merge into one df (game)
    game = pd.concat([bs_adv_df, bs_trad_df, final_scores], axis=1)

    # determine which team is home/away
    if((str(game.iloc[0]['TEAM_ABBREVIATION']) == game_matchup[:3] and game_matchup[4] == 'v') or (str(game.iloc[0]['TEAM_ABBREVIATION']) == game_matchup[8:11] and game_matchup[4] == '@')):
        home = game.iloc[0].to_frame().T
        away = game.iloc[1].to_frame().T
    else:
        home = game.iloc[1].to_frame().T
        away = game.iloc[0].to_frame().T

    # renaming home columns
    h_col_names = list(home.columns)
    for n in h_col_names:
        home = home.rename(columns={str(n): 'h_' + str(n)})
    home = home.loc[:, ~home.columns.duplicated()]

    # renaming away columns
    a_col_names = list(away.columns)
    for n in a_col_names:
        away = away.rename(columns={str(n): 'a_' + str(n)})
    away = away.loc[:, ~away.columns.duplicated()]

    result = pd.concat([home, away])
    result = result.loc[0].combine_first(result.loc[1]).to_frame().T
    result = result.drop(['a_GAME_ID', 'h_TEAM_ID', 'h_TEAM_NAME', 'h_TEAM_ABBREVIATION', 'h_TEAM_CITY',
                          'h_MIN', 'a_TEAM_ID', 'a_TEAM_NAME', 'a_TEAM_ABBREVIATION', 'a_TEAM_CITY', 'a_MIN'], axis='columns')
    result = result.rename(columns={'h_GAME_ID': 'GAME_ID'})
    result.insert(1, 'Matchup', game_matchup)
    result.insert(1, 'Date', game_date)
    return result


# get a dictionary of past ~15,000 games
nba_all_games = leaguegamefinder.LeagueGameFinder(
    league_id_nullable='00').get_data_frames()[0]
nba_all_games = nba_all_games.drop_duplicates(subset=['GAME_ID'])
test_games = nba_all_games[:20]

wnba_all_games = leaguegamefinder.LeagueGameFinder(
    league_id_nullable='10').get_data_frames()[0]
wnba_all_games = wnba_all_games.drop_duplicates(subset=['GAME_ID'])


def season_game_stats(games_list):
    all_dfs = []
    used_ids = []
    for i in range(len(games_list)):
        # skip over games we've already put in df
        gm_id = games_list.iloc[i]['GAME_ID']
        if(gm_id in used_ids):
            continue
        used_ids.append(gm_id)

        gm_matchup = games_list.iloc[i]['MATCHUP']
        gm_date = games_list.iloc[i]['GAME_DATE']

        try:
            temp_df = get_single_game_df(gm_id, gm_matchup, gm_date)
            all_dfs.append(temp_df)
        except:
            pass

        print(round(i*100/len(games_list), 1), '% done')

    full_season = pd.concat(all_dfs)
    full_season.dropna()
    return full_season


# %% Games
print("Get Stats Start")
# use wnba_all_games for wnba dataset
game_stats = season_game_stats(test_games)
# make df
compression_opts = dict(method='zip', archive_name='nba_half_stats.csv')
game_stats.to_csv('nba_half_stats.zip', index=False, compression=compression_opts)
print("Get Stats Complete")
