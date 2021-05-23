#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Apr  6 18:25:18 2021

@author: mikey
"""

import pandas as pd
from bs4 import BeautifulSoup
import requests
import bs4
import json
from nba_api.stats.endpoints import leaguegamefinder
import time

# endpoint for livedata play-by-play
url = 'https://nba-dev-us-east-1-mediaops-stats.s3.amazonaws.com/NBA/liveData/playbyplay/playbyplay_0022000826.json'

# Getting dataframe of all NBA games
all_games = leaguegamefinder.LeagueGameFinder(
    league_id_nullable='00').get_data_frames()[0]
all_games = all_games.drop_duplicates(subset=['GAME_ID'])

# Getting dataframe of all WNBA games
wnba_all_games = leaguegamefinder.LeagueGameFinder(
    league_id_nullable='10').get_data_frames()[0]
wnba_all_games = wnba_all_games.drop_duplicates(subset=['GAME_ID'])

# List of NBA team ids and abbreviations
teams = [
    {
        "teamId": 1610612737,
        "abbreviation": "ATL"
    },
    {
        "teamId": 1610612738,
        "abbreviation": "BOS"
    },
    {
        "teamId": 1610612751,
        "abbreviation": "BKN"
    },
    {
        "teamId": 1610612766,
        "abbreviation": "CHA"
    },
    {
        "teamId": 1610612741,
        "abbreviation": "CHI"
    },
    {
        "teamId": 1610612739,
        "abbreviation": "CLE"
    },
    {
        "teamId": 1610612742,
        "abbreviation": "DAL"
    },
    {
        "teamId": 1610612743,
        "abbreviation": "DEN"
    },
    {
        "teamId": 1610612765,
        "abbreviation": "DET"
    },
    {
        "teamId": 1610612744,
        "abbreviation": "GSW"
    },
    {
        "teamId": 1610612745,
        "abbreviation": "HOU"
    },
    {
        "teamId": 1610612754,
        "abbreviation": "IND"
    },
    {
        "teamId": 1610612746,
        "abbreviation": "LAC"
    },
    {
        "teamId": 1610612747,
        "abbreviation": "LAL"
    },
    {
        "teamId": 1610612763,
        "abbreviation": "MEM"
    },
    {
        "teamId": 1610612748,
        "abbreviation": "MIA"
    },
    {
        "teamId": 1610612749,
        "abbreviation": "MIL"
    },
    {
        "teamId": 1610612750,
        "abbreviation": "MIN"
    },
    {
        "teamId": 1610612740,
        "abbreviation": "NOP"
    },
    {
        "teamId": 1610612752,
        "abbreviation": "NYK"
    },
    {
        "teamId": 1610612760,
        "abbreviation": "OKC"
    },
    {
        "teamId": 1610612753,
        "abbreviation": "ORL"
    },
    {
        "teamId": 1610612755,
        "abbreviation": "PHI"
    },
    {
        "teamId": 1610612756,
        "abbreviation": "PHX"
    },
    {
        "teamId": 1610612757,
        "abbreviation": "POR"
    },
    {
        "teamId": 1610612758,
        "abbreviation": "SAC"
    },
    {
        "teamId": 1610612759,
        "abbreviation": "SAS"
    },
    {
        "teamId": 1610612761,
        "abbreviation": "TOR"
    },
    {
        "teamId": 1610612762,
        "abbreviation": "UTA"
    },
    {
        "teamId": 1610612764,
        "abbreviation": "WAS"
    }
]

# WNBA ids and abbreviations
wnba_teams = [
    {
        "teamId": 1611661319,
        "abbreviation": "LVA"
    },
    {
        "teamId": 1611661324,
        "abbreviation": "MIN"
    },
    {
        "teamId": 1611661323,
        "abbreviation": "CON"
    },
    {"teamId": 1611661328,
        "abbreviation": "SEA"
     },
    {
        "teamId": 1611661320,
        "abbreviation": "LAS"
    },
    {
        "teamId": 1611661317,
        "abbreviation": "PHO"
    },
    {
        "teamId": 1611661322,
        "abbreviation": "WAS"
    },
    {
        "teamId": 1611661313,
        "abbreviation": "NYL"
    },
    {
        "teamId": 1611661321,
        "abbreviation": "DAL"
    },
    {
        "teamId": 1611661325,
        "abbreviation": "IND"
    },
    {
        "teamId": 1611661330,
        "abbreviation": "ATL"
    },
    {
        "teamId": 1611661329,
        "abbreviation": "CHI"}
]

# returns shooting statistics. Parameters are: play by play list, home abbreviation, away abbreviation


def getShootingStats(actions, homeTeam, awayTeam):

    # set stats to 0
    a_FGA = h_FGA = a_FGM = h_FGM = a_FG3A = h_FG3A = a_FG3M = h_FG3M = a_FTA = h_FTA = a_FTM = h_FTM = a_AST = h_AST = a_BLK = h_BLK = 0

    # iterate through each action in play by play
    for action in actions:
        # get shooting stats
        try:
            # 2pt
            if(action['actionType'] == '2pt' and action['teamTricode'] == homeTeam):
                h_FGA += 1
                if(action['shotResult'] == 'Made'):
                    h_FGM += 1
                    try:
                        if(action['assistPersonId'] != 0):
                            h_AST += 1
                    except:
                        pass
                else:
                    try:
                        if(action['blockPersonId'] != 0):
                            a_BLK += 1
                    except:
                        pass
            if(action['actionType'] == '2pt' and action['teamTricode'] == awayTeam):
                a_FGA += 1
                if(action['shotResult'] == 'Made'):
                    a_FGM += 1
                    try:
                        if(action['assistPersonId'] != 0):
                            a_AST += 1
                    except:
                        pass
                else:
                    try:
                        if(action['blockPersonId'] != 0):
                            h_BLK += 1
                    except:
                        pass
            # 3pt
            if(action['actionType'] == '3pt'):
                if(action['teamTricode'] == homeTeam):
                    h_FGA += 1
                    h_FG3A += 1
                    if(action['shotResult'] == 'Made'):
                        h_FGM += 1
                        h_FG3M += 1
                        try:
                            if(action['assistPersonId'] != 0):
                                h_AST += 1
                        except:
                            pass

                if(action['teamTricode'] == awayTeam):
                    a_FGA += 1
                    a_FG3A += 1
                    if(action['shotResult'] == 'Made'):
                        a_FGM += 1
                        a_FG3M += 1
                        try:
                            if(action['assistPersonId'] != 0):
                                a_AST += 1
                        except:
                            pass
            # free throws
            if(action['actionType'] == 'freethrow'):
                if(action['teamTricode'] == homeTeam):
                    h_FTA += 1
                    if(action['shotResult'] == 'Made'):
                        h_FTM += 1
                if(action['teamTricode'] == awayTeam):
                    a_FTA += 1
                    if(action['shotResult'] == 'Made'):
                        a_FTM += 1
        except:
            continue

    return a_FGA, h_FGA, a_FGM, h_FGM, a_FG3A, h_FG3A, a_FG3M, h_FG3M, a_FTA, h_FTA, a_FTM, h_FTM, a_AST, h_AST, a_BLK, h_BLK

# returns rebound statistics. Parameters are: play by play list, home abbreviation, away abbreviation


def getReboundStats(actions, homeTeam, awayTeam):

    a_OREB = h_OREB = a_DREB = h_DREB = 0

    for action in actions:
        try:
            if(action['actionType'] == 'rebound'):
                # TEAM rebounds were skewing the OREB and DREB stats, so we omit plays that result in TEAM rebound
                if('TEAM' in action['description']):
                    continue
                if(action['teamTricode'] == homeTeam):
                    if(action['subType'] == 'offensive'):
                        h_OREB += 1
                    else:
                        h_DREB += 1
                else:
                    if(action['subType'] == 'offensive'):
                        a_OREB += 1
                    else:
                        a_DREB += 1
        except:
            continue

    return a_OREB, h_OREB, a_DREB, h_DREB

# returns turnover statistics. Parameters are: play by play list, home abbreviation, away abbreviation


def getTurnoverStats(actions, homeTeam, awayTeam):
    a_STL = h_STL = a_TO = h_TO = 0
    for action in actions:
        try:
            if(action['actionType'] == 'turnover'):
                if(action['teamTricode'] == homeTeam):
                    h_TO += 1
                    try:
                        if(action['stealPersonId'] != 0):
                            a_STL += 1
                    except:
                        pass
                if(action['teamTricode'] == awayTeam):
                    a_TO += 1
                    try:
                        if(action['stealPersonId'] != 0):
                            h_STL += 1
                    except:
                        pass
        except:
            continue
    return a_STL, h_STL, a_TO, h_TO

# returns possessions statistics. Parameters are: play by play list, home id, away id


def getPossessions(actions, homeId, awayId):
    a_POSS = h_POSS = 0

    poss = 0
    for action in actions:
        try:
            if(action['possession'] == poss):
                continue
            else:
                poss = action['possession']
                if(poss == homeId):
                    h_POSS += 1
                if(poss == awayId):
                    a_POSS += 1
        except:
            continue
    return a_POSS, h_POSS

# returns personal foul statistics. Parameters are play by play list, home tricode, away tricode


def getPF(actions, homeTeam, awayTeam):
    a_PF = h_PF = 0

    for action in actions:
        try:
            if(action['actionType'] == 'foul'):
                if(action['teamTricode'] == homeTeam):
                    h_PF += 1
                elif(action['teamTricode'] == awayTeam):
                    a_PF += 1
        except:
            continue
    return a_PF, h_PF

# returns a dictionary of all the stats for the game. Parameters: game id, 1 if league is WNBA and 0 if NBA


def getGameStats(game_id, is_wnba):
    if(is_wnba == 1):
        # get home/away abbrev
        game = wnba_all_games.loc[wnba_all_games['GAME_ID'] == game_id]
        matchup = game['MATCHUP'].iloc[0]
        if(matchup[4] == 'v'):
            homeTeam = matchup[:3]
            awayTeam = matchup[8:11]
        else:
            homeTeam = matchup[6:9]
            awayTeam = matchup[:3]

        for team in wnba_teams:
            if(team["abbreviation"] == homeTeam):
                homeId = team["teamId"]
            if(team["abbreviation"] == awayTeam):
                awayId = team["teamId"]
        url = 'https://cdn.nba.com/static/json/liveData/playbyplay/playbyplay_%s.json' % game_id

    else:
        # get home/away abbrev
        game = all_games.loc[all_games['GAME_ID'] == game_id]
        matchup = game['MATCHUP'].iloc[0]
        if(matchup[4] == 'v'):
            homeTeam = matchup[:3]
            awayTeam = matchup[8:11]
        else:
            homeTeam = matchup[6:9]
            awayTeam = matchup[:3]

        for team in teams:
            if(team["abbreviation"] == homeTeam):
                homeId = team["teamId"]
            if(team["abbreviation"] == awayTeam):
                awayId = team["teamId"]

        url = 'https://cdn.nba.com/static/json/liveData/playbyplay/playbyplay_%s.json' % game_id

    # parsing endpoint
    page = requests.get(url)
    if(page.status_code != 200):
        raise RuntimeError("Could not retrieve data :(")

    soup = BeautifulSoup(page.text, 'html.parser')
    ree = json.loads(soup.text)
    plays = ree['game']
    actions = plays['actions']

    a_half_pts = h_half_pts = a_FGA = h_FGA = a_FGM = h_FGM = a_FG3A = h_FG3A = a_FG3M = h_FG3M = a_FTA = h_FTA = a_FTM = h_FTM = a_OREB = h_OREB = a_DREB = h_DREB = a_AST = h_AST = a_STL = h_STL = a_BLK = h_BLK = a_TO = h_TO = a_POSS = h_POSS = 0

    # get half pts
    for action in actions:
        try:
            if(action['description'] == 'Period End' and action['period'] == 2):
                a_half_pts = int(action['scoreAway'])
                h_half_pts = int(action['scoreHome'])
        except:
            continue

    # shooting stats
    a_FGA, h_FGA, a_FGM, h_FGM, a_FG3A, h_FG3A, a_FG3M, h_FG3M, a_FTA, h_FTA, a_FTM, h_FTM, a_AST, h_AST, a_BLK, h_BLK = getShootingStats(
        actions, homeTeam, awayTeam)

    # turnover stats
    a_STL, h_STL, a_TO, h_TO = getTurnoverStats(actions, homeTeam, awayTeam)

    # possessions
    a_POSS, h_POSS = getPossessions(actions, homeId, awayId)

    # rebounding stats
    a_OREB, h_OREB, a_DREB, h_DREB = getReboundStats(
        actions, homeTeam, awayTeam)

    # PF stats
    a_PF, h_PF = getPF(actions, homeTeam, awayTeam)

    return ([h_FGM, h_FGA, h_FG3M, h_FG3A, h_FTM, h_FTA, h_OREB,
             h_DREB, h_AST, h_STL, h_BLK, h_TO, h_PF, h_half_pts, 1],
            [a_FGM, a_FGA, a_FG3M, a_FG3A, a_FTM, a_FTA, a_OREB,
             a_DREB, a_AST, a_STL, a_BLK, a_TO, a_PF, a_half_pts, 0])
    # return({'a_half_pts': a_half_pts, 'h_half_pts': h_half_pts, 'a_FGA': a_FGA, 'h_FGA': h_FGA, 'a_FGM': a_FGM, 'h_FGM': h_FGM, 'a_FG3A': a_FG3A, 'h_FG3A': h_FG3A, 'a_FG3M': a_FG3M, 'h_FG3M': h_FG3M, 'a_FTA': a_FTA, 'h_FTA': h_FTA, 'a_FTM': a_FTM, 'h_FTM': h_FTM, 'a_OREB': a_OREB, 'h_OREB': h_OREB, 'a_DREB': a_DREB, 'h_DREB': h_DREB, 'a_AST': a_AST, 'h_AST': h_AST, 'a_STL': a_STL, 'h_STL': h_STL, 'a_BLK': a_BLK, 'h_BLK': h_BLK, 'a_TO': a_TO, 'h_TO': h_TO, 'a_POSS': a_POSS, 'h_POSS': h_POSS})
