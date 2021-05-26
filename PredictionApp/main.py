from tkinter import *
import pandas as pd
from bs4 import BeautifulSoup
import requests
import bs4
import json
from nba_api.stats.endpoints import leaguegamefinder
import time
import tkinter as tk
from getLiveHalfStats import getGameStats
from getPrediction import getPrediction


url = 'https://cdn.nba.com/static/json/liveData/scoreboard/todaysScoreboard_00.json'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')
ree = json.loads(soup.text)
scoreboard = ree["scoreboard"]
games = scoreboard["games"]


NBA_OPTIONS = []


def getMatchup(i):
    return (str(i) + ". " + games[i]["awayTeam"]["teamTricode"] + " @ " + games[i]["homeTeam"]["teamTricode"])


for i in range(len(games)):
    if(games[i]["gameStatus"] == 2):
        NBA_OPTIONS.append(getMatchup(i))


def getStats(i):
    gameID = games[i]["gameId"]
    home_stats, away_stats = getGameStats(gameID, False)
    home_prediction = getPrediction(home_stats)
    away_prediction = getPrediction(away_stats)
    return(str(home_prediction), str(away_prediction))


master = Tk()
master.title('NBA Score Predictor')
master.geometry("450x350")

title = Label(text="PICK A GAME:")
title.pack()

variable = StringVar(master)
variable.set("GAMES")  # default value

if(len(NBA_OPTIONS) > 0):
    w = OptionMenu(master, variable, *NBA_OPTIONS)
    w.pack()
else:
    w = Label(text="No games available at the moment...", background="red")
    w.pack()


def onClick():
    try:
        gameNum = int(variable.get()[0])
        home_pred, away_pred = getStats(gameNum)
        Stats["text"] = "Predicted Stats For " + \
            variable.get()[3:] + ":\nHome: " + home_pred + " Away: " + away_pred
    except:
        Stats["text"] = "Unable to retrieve stats to make a prediction. Try again later."


button = Button(master, text="---GET STATS---", command=onClick)
button.pack()

Stats = Label(text="Predicted Stats:")
Stats.pack()

mainloop()


# window.mainloop()
