import pandas as pd
import numpy as np


# split up df by game
def splitData(df):
    # get number of rows in the dataframe
    numRows = len(df.index)
    # initialize an array to store games in
    gamesArr = []
    # startGame and endGame are indices for the dataframe that resemble the start and end of each game
    startGame = 0
    for i in range(numRows):
        if(df.iloc[i, 9] == 'End of Game'):
            endGame = i + 1
            gamesArr.append(df.iloc[startGame:endGame])
            startGame = endGame
    return(gamesArr)


def halfStatsFG(data):
    # get all the halftime FG stats
    awayFGA = 0
    homeFGA = 0
    awayFG = 0
    away3PT = 0
    homeFG = 0
    home3PT = 0
    numRows = len(data.index)

    for row in range(numRows):
        if(data.iloc[row, 9] == 'End of 2nd quarter'):
            break
        if(isinstance(data.iloc[row, 15], str) and isinstance(data.iloc[row, 9], str)):
            awayFGA += 1
            if(data.iloc[row, 16] == 'make'):
                awayFG += 1
                if(data.iloc[row, 15][0] == '3'):
                    away3PT += 1
        elif(isinstance(data.iloc[row, 15], str) and isinstance(data.iloc[row, 9], float)):
            homeFGA += 1
            if(data.iloc[row, 16] == 'make'):
                homeFG += 1
                if(data.iloc[row, 15][0] == '3'):
                    home3PT += 1

    return awayFGA, awayFG, away3PT, homeFGA, homeFG, home3PT


def getHalfPos(data):
    # get half time possession statistics
    numRows = len(data.index)
    numPosAway = 0
    numPosHome = 0
    awayTO = 0
    homeTO = 0

    for row in range(numRows):
        if(data.iloc[row, 9] == 'End of 2nd quarter'):
            break

        if(isinstance(data.iloc[row, 9], str)):
            # ways home team gets a possession
            if(data.iloc[row, 9][:8] == 'Turnover'):
                numPosHome += 1
                awayTO += 1
            elif(isinstance(data.iloc[row, 16], str)):
                if(data.iloc[row, 16] == 'make'):
                    numPosHome += 1
                else:
                    if(data.iloc[row+1, 24] == 'defensive'):
                        numPosHome += 1

        if(isinstance(data.iloc[row, 12], str)):
            # ways away team gets a possession
            if(data.iloc[row, 12][:8] == 'Turnover'):
                numPosAway += 1
                homeTO += 1
            elif(isinstance(data.iloc[row, 16], str)):
                if(data.iloc[row, 16] == 'make'):
                    numPosAway += 1
                else:
                    if(data.iloc[row+1, 24] == 'defensive'):
                        numPosAway += 1

    return numPosAway, numPosHome, awayTO, homeTO


def getRebounds(data):
    # get half time rebounding statistics
    numRows = len(data.index)
    awayOR = 0
    awayDR = 0
    homeOR = 0
    homeDR = 0

    for row in range(numRows):
        if(data.iloc[row, 9] == 'End of 2nd quarter'):
            break

        if(isinstance(data.iloc[row, 9], str)):
            if(data.iloc[row, 9][:17] == 'Offensive rebound'):
                awayOR += 1
            elif(data.iloc[row, 9][:17] == 'Defensive rebound'):
                awayDR += 1

        if(isinstance(data.iloc[row, 12], str)):
            if(data.iloc[row, 12][:17] == 'Offensive rebound'):
                homeOR += 1
            elif(data.iloc[row, 12][:17] == 'Defensive rebound'):
                homeDR += 1
    return awayOR, awayDR, homeOR, homeDR
