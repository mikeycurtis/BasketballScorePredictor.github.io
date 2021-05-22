import pandas as pd
import numpy as np
from helperFunctions import halfStatsFG
from helperFunctions import getHalfPos
from helperFunctions import getRebounds

# Game class contains all half time statistics for each game from the play by play df


class Game:

    gameCount = 0

    def __init__(self, data):
        self.numRows = len(data.index)

        # halftime
        self.halfStats = data.loc[data['AwayPlay'] == 'End of 2nd quarter']
        self.halfAwayScore = self.halfStats['AwayScore']
        self.halfHomeScore = self.halfStats['HomeScore']

        # number of possessions and turnovers
        awayPos, homePos, awayTO, homeTO = getHalfPos(data)
        self.halfAwayPos = awayPos
        self.halfHomePos = homePos
        self.halfAwayTO = awayTO
        self.halfHomeTO = homeTO

        # offensive and defensive rebounds
        awayOR, awayDR, homeOR, homeDR = getRebounds(data)
        self.halfAwayOR = awayOR
        self.halfAwayDR = awayDR
        self.halfHomeOR = homeOR
        self.halfHomeDR = homeDR

        # fg attempts
        awayFGA, awayFG, away3PT, homeFGA, homeFG, home3PT = halfStatsFG(data)
        self.halfAwayFGA = awayFGA
        self.halfAwayFG = awayFG
        self.halfAway3PT = away3PT
        self.halfHomeFGA = homeFGA
        self.halfHomeFG = homeFG
        self.halfHome3PT = home3PT

        # final
        self.finalStats = data.loc[data['AwayPlay'] == 'End of Game']
        self.finalAwayScore = self.finalStats['AwayScore']
        self.finalHomeScore = self.finalStats['HomeScore']

        self.awayWon = self.halfStats['WinningTeam'] == self.halfStats['AwayTeam']
        Game.gameCount += 1

    def getHalfScoreDif(self):
        # returns half score difference between away and home team
        return ((self.halfAwayScore - self.halfHomeScore).item())

    def getFinalScoreDif(self):
        # returns final score difference between away and home team
        return ((self.finalAwayScore - self.finalHomeScore).item())

    def getAwayEFG(self):
        return((self.halfAwayFG + 0.5*(self.halfAway3PT)) / self.halfAwayFGA)

    def getHomeEFG(self):
        return((self.halfHomeFG + 0.5*(self.halfHome3PT)) / self.halfHomeFGA)

    def getAwayTPP(self):
        return(self.halfAwayTO / self.halfAwayPos)

    def getHomeTPP(self):
        return(self.halfHomeTO / self.halfHomePos)

    def getAwayORP(self):
        # return(self.halfAwayOR / self.halfAwayPos)
        return(self.halfAwayOR / (self.halfAwayFGA - self.halfAwayFG))

    def getHomeORP(self):
        # return(self.halfHomeOR / self.halfHomePos)
        return(self.halfHomeOR / (self.halfHomeFGA - self.halfHomeFG))

    def getAwayDRP(self):
        # commented out the per possession calculation
        # return(self.halfAwayDR / self.halfAwayPos)
        return(self.halfAwayDR / (self.halfHomeFGA - self.halfHomeFG))

    def getHomeDRP(self):
        # commented out the per possession calculation
        # return(self.halfHomeDR / self.halfHomePos)
        return(self.halfHomeDR / (self.halfAwayFGA - self.halfAwayFG))

    def getAwayDTPP(self):
        return(self.halfHomeTO / self.halfAwayPos)

    def getHomeDTPP(self):
        return(self.halfAwayTO / self.halfHomePos)

    def getWinner(self):
        if(self.finalAwayScore.item() > self.finalHomeScore.item()):
            return ("Away")
        else:
            return("Home")

    def getHalfScore(self):
        awayScore = str(self.halfAwayScore.item())
        homeScore = str(self.halfHomeScore.item())
        return(awayScore + " - " + homeScore)

    def getFinalScore(self):
        awayScore = str(self.finalAwayScore.item())
        homeScore = str(self.finalHomeScore.item())
        return(awayScore + " - " + homeScore)

    def printStats(self):
        print("Game stats at half:\n")
        print("Away:\n")
        print("FGA:", self.halfAwayFGA)
        print("\nFGs made:", self.halfAwayFG)
        print("\n3pts made:", self.halfAway3PT)
        print("\nEFG:", self.getAwayEFG())
        print("\nPossessions:", self.halfAwayPos)
        print("\nTurn-Overs:", self.halfAwayTO)
        print("\nTPP:", self.getAwayTPP())
        print("\nOffensive Rebounds:", self.halfAwayOR)
        print("\nDefensive Rebounds:", self.halfAwayDR)
        print("\nORP:", self.getAwayORP())
        print("\nDRP:", self.getAwayDRP())
        print("\nDTPP:", self.getAwayDTPP())
        print('-'*20)
        print("Home:\n")
        print("FGA:", self.halfHomeFGA)
        print("\nFGs made:", self.halfHomeFG)
        print("\n3pts made:", self.halfHome3PT)
        print("\nEFG:", self.getAwayEFG())
        print("\nPossessions:", self.halfHomePos)
        print("\nTurn-Overs:", self.halfHomeTO)
        print("\nTPP:", self.getAwayTPP())
        print("\nOffensive Rebounds:", self.halfHomeOR)
        print("\nDefensive Rebounds:", self.halfHomeDR)
        print("\nORP:", self.getHomeORP())
        print("\nDRP:", self.getHomeDRP())
        print("\nDTPP:", self.getHomeDTPP())
        print('-'*20)
        print("Final Score (Away - Home):", (self.finalAwayScore).to_string()
              [-4:], " - ", (self.finalHomeScore).to_string()[-4:])
        print()
