import pandas as pd
from Game import Game
from helperFunctions import splitData


def getArrOfGames(data):
    # returns array of games given an input of play by play data
    gms = splitData(data)
    gamesArr = []
    for i in range(len(gms)):
        gamesArr.append(Game(gms[i]))

    return gamesArr


def makeDF(data, name):
    # creates a df of all the games and their half time statistics
    games = getArrOfGames(data)

    d = {}
    arrWinner = []
    arrHalfScoreAway = []
    arrHalfScoreHome = []
    arrHalfScoreDiff = []
    arrFinalScoreAway = []
    arrFinalScoreHome = []
    arrFinalScoreDiff = []
    arrHalfAwayPoints = []
    arrHalfAwayFGA = []
    arrHalfAwayFG = []
    arrHalfAway3PT = []
    arrHalfAwayEFG = []
    arrHalfAwayPos = []
    arrHalfAwayTO = []
    arrHalfAwayTPP = []
    arrHalfAwayOR = []
    arrHalfAwayDR = []
    arrHalfAwayORP = []
    arrHalfAwayDRP = []
    arrHalfAwayDTPP = []

    arrHalfHomePoints = []
    arrHalfHomeFGA = []
    arrHalfHomeFG = []
    arrHalfHome3PT = []
    arrHalfHomeEFG = []
    arrHalfHomePos = []
    arrHalfHomeTO = []
    arrHalfHomeTPP = []
    arrHalfHomeOR = []
    arrHalfHomeDR = []
    arrHalfHomeORP = []
    arrHalfHomeDRP = []
    arrHalfHomeDTPP = []

    for i in range(len(games)):
        arrWinner.append(games[i].getWinner())
        arrHalfScoreAway.append(games[i].halfAwayScore.item())
        arrHalfScoreHome.append(games[i].halfHomeScore.item())
        arrHalfScoreDiff.append(games[i].getHalfScoreDif())
        arrFinalScoreAway.append(games[i].finalAwayScore.item())
        arrFinalScoreHome.append(games[i].finalHomeScore.item())
        arrFinalScoreDiff.append(games[i].getFinalScoreDif())

        arrHalfAwayPoints.append(games[i].halfAwayScore)
        arrHalfAwayFG.append(games[i].halfAwayFG)
        arrHalfAway3PT.append(games[i].halfAway3PT)
        arrHalfAwayEFG.append(games[i].getAwayEFG())
        arrHalfAwayPos.append(games[i].halfAwayPos)
        arrHalfAwayTO.append(games[i].halfAwayTO)
        arrHalfAwayTPP.append(games[i].getAwayTPP())
        arrHalfAwayOR.append(games[i].halfAwayOR)
        arrHalfAwayDR.append(games[i].halfAwayDR)
        arrHalfAwayORP.append(games[i].getAwayORP())
        arrHalfAwayDRP.append(games[i].getAwayDRP())
        arrHalfAwayDTPP.append(games[i].getAwayDTPP())
        arrHalfAwayFGA.append(games[i].halfAwayFGA)

        arrHalfHomePoints.append(games[i].halfHomeScore)
        arrHalfHomeFG.append(games[i].halfHomeFG)
        arrHalfHome3PT.append(games[i].halfHome3PT)
        arrHalfHomeEFG.append(games[i].getHomeEFG())
        arrHalfHomePos.append(games[i].halfHomePos)
        arrHalfHomeTO.append(games[i].halfHomeTO)
        arrHalfHomeTPP.append(games[i].getHomeTPP())
        arrHalfHomeOR.append(games[i].halfHomeOR)
        arrHalfHomeDR.append(games[i].halfHomeDR)
        arrHalfHomeORP.append(games[i].getHomeORP())
        arrHalfHomeDRP.append(games[i].getHomeDRP())
        arrHalfHomeDTPP.append(games[i].getHomeDTPP())
        arrHalfHomeFGA.append(games[i].halfHomeFGA)

    # stats columns
    d['Winner'] = arrWinner
    d['Final Score Away'] = arrFinalScoreAway
    d['Final Score Home'] = arrFinalScoreHome
    d['Final Score Difference'] = arrFinalScoreDiff
    d['Half Score Away'] = arrHalfScoreAway
    d['Half Score Home'] = arrHalfScoreHome
    d['Half Score Difference'] = arrHalfScoreDiff
    d['Away FGA'] = arrHalfAwayFGA
    d['Home FGA'] = arrHalfHomeFGA
    d['Away FG'] = arrHalfAwayFG
    d['Home FG'] = arrHalfHomeFG
    d['Away 3PT'] = arrHalfAway3PT
    d['Home 3PT'] = arrHalfHome3PT
    d['Away EFG'] = arrHalfAwayEFG
    d['Home EFG'] = arrHalfHomeEFG
    d['Away Pos'] = arrHalfAwayPos
    d['Home Pos'] = arrHalfHomePos
    d['Away TO'] = arrHalfAwayTO
    d['Home TO'] = arrHalfHomeTO
    d['Away TPP'] = arrHalfAwayTPP
    d['Home TPP'] = arrHalfHomeTPP
    d['Away OR'] = arrHalfAwayOR
    d['Home OR'] = arrHalfHomeOR
    d['Away DR'] = arrHalfAwayDR
    d['Home DR'] = arrHalfHomeDR
    d['Away ORP'] = arrHalfAwayORP
    d['Home ORP'] = arrHalfHomeORP
    d['Away DRP'] = arrHalfAwayDRP
    d['Home DRP'] = arrHalfHomeDRP
    d['Away DTPP'] = arrHalfAwayDTPP
    d['Home DTPP'] = arrHalfHomeDTPP
    df = pd.DataFrame(data=d)

    # make df
    compression_opts = dict(method='zip', archive_name=name + '.csv')
    df.to_csv(name + '.zip', index=False, compression=compression_opts)
