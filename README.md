# NBApredictor
### Data Acquisition & Cleaning

##### Initial Approach

Our initial approach was to train our model on a dataset that had already been made. This seemed like the easiest approach, as we wouldn't need to scrape the data ourselves. There were plenty of datasets that had box score statistics for full NBA games, but the issue was that we wanted half-time statistics. We ended up coming across [this dataset](https://www.kaggle.com/schmadam97/nba-playbyplay-data-20182019?select=NBA_PBP_2020-21.csv) , which consisted of play-by-play data for NBA games from 2015-2021.

We then converted the play-by-play data into a dataframe of half-time statistics that we thought would be significant. We did this by creating a [Game](https://github.com/mikeycurtis/nba-datascience-project/blob/main/Game.py) class that contains all the half time statistics for a given game, and then going through the play-by-play data, creating an array of games, which we then turned into a dataframe. [Here](https://github.com/BasketballScorePredictor/BasketballScorePredictor.github.io/blob/main/DataCollection/getData.py) is the code used to make our initial dataset.

The full dataset can be found [here.](https://www.kaggle.com/mikeycurtis/nba-half-stats) Below is an example of how our initial dataset was formatted.

<div style="overflow-x: auto">

<table border="1" class="dataframe">

<thead>

<tr style="text-align: center">

<th style="min-width: 150px">Winner</th>

<th style="min-width: 150px">Final Score Away</th>

<th style="min-width: 150px">Final Score Home</th>

<th style="min-width: 150px">Final Score Difference</th>

<th style="min-width: 150px">Half Score Away</th>

<th style="min-width: 150px">Half Score Home</th>

<th style="min-width: 150px">Half Score Difference</th>

<th style="min-width: 150px">Away FGA</th>

<th style="min-width: 150px">Home FGA</th>

<th style="min-width: 150px">Away FG</th>

<th style="min-width: 150px">Home FG</th>

<th style="min-width: 150px">Away 3PT</th>

<th style="min-width: 150px">Home 3PT</th>

<th style="min-width: 150px">Away EFG</th>

<th style="min-width: 150px">Home EFG</th>

<th style="min-width: 150px">Away Pos</th>

<th style="min-width: 150px">Home Pos</th>

<th style="min-width: 150px">Away TO</th>

<th style="min-width: 150px">Home TO</th>

<th style="min-width: 150px">Away TPP</th>

<th style="min-width: 150px">Home TPP</th>

<th style="min-width: 150px">Away OR</th>

<th style="min-width: 150px">Home OR</th>

<th style="min-width: 150px">Away DR</th>

<th style="min-width: 150px">Home DR</th>

<th style="min-width: 150px">Away ORP</th>

<th style="min-width: 150px">Home ORP</th>

<th style="min-width: 150px">Away DRP</th>

<th style="min-width: 150px">Home DRP</th>

<th style="min-width: 150px">Away DTPP</th>

<th style="min-width: 150px">Home DTPP</th>

</tr>

</thead>

<tbody>

<tr style="text-align: center">

<td>Home</td>

<td>99</td>

<td>125</td>

<td>-26</td>

<td>45</td>

<td>63</td>

<td>-18</td>

<td>53</td>

<td>47</td>

<td>17</td>

<td>23</td>

<td>4</td>

<td>9</td>

<td>0.358491</td>

<td>0.585106</td>

<td>54</td>

<td>52</td>

<td>9</td>

<td>13</td>

<td>0.166667</td>

<td>0.250000</td>

<td>13</td>

<td>7</td>

<td>18</td>

<td>26</td>

<td>0.361111</td>

<td>0.291667</td>

<td>0.750000</td>

<td>0.722222</td>

<td>0.240741</td>

<td>0.173077</td>

</tr>

<tr style="text-align: center">

<td>Away</td>

<td>116</td>

<td>109</td>

<td>7</td>

<td>56</td>

<td>54</td>

<td>2</td>

<td>45</td>

<td>40</td>

<td>21</td>

<td>17</td>

<td>7</td>

<td>5</td>

<td>0.544444</td>

<td>0.487500</td>

<td>47</td>

<td>54</td>

<td>12</td>

<td>11</td>

<td>0.255319</td>

<td>0.203704</td>

<td>4</td>

<td>8</td>

<td>20</td>

<td>22</td>

<td>0.166667</td>

<td>0.347826</td>

<td>0.869565</td>

<td>0.916667</td>

<td>0.234043</td>

<td>0.222222</td>

</tr>

<tr style="text-align: center">

<td>Home</td>

<td>114</td>

<td>121</td>

<td>-7</td>

<td>44</td>

<td>65</td>

<td>-21</td>

<td>43</td>

<td>45</td>

<td>19</td>

<td>26</td>

<td>3</td>

<td>5</td>

<td>0.476744</td>

<td>0.633333</td>

<td>45</td>

<td>47</td>

<td>8</td>

<td>7</td>

<td>0.177778</td>

<td>0.148936</td>

<td>5</td>

<td>8</td>

<td>12</td>

<td>22</td>

<td>0.208333</td>

<td>0.421053</td>

<td>0.631579</td>

<td>0.916667</td>

<td>0.155556</td>

<td>0.170213</td>

</tr>

</tbody>

</table>

</div>

##### Final Approach

We decided that our original dataset could be improved, so we took a different approach. Instead of searching through datasets that had already been made, we created a new dataset using [nba_api](https://github.com/swar/nba_api/blob/master/docs/table_of_contents.md). With this method, not only were we able to collect more statistical data, but we were also able to create a WNBA dataset.

The new datasets consisted of both advanced and traditional box score statistics. We did this by using nba_api's LeagueGameFinder, BoxScoreAdvancedV2, and BoxScoreTraditionalV2 functions along with pandas to create a new dataset with many more statistics. The LeagueGameFinder function was used to retrieve the game ids of roughly the past 15,000 games. We then fed these game ids into the BoxScoreAdvancedV2 and the BoxScoreTraditionalV2 functions and merged the statistics into a single dataset for eachgame. [Here](https://github.com/BasketballScorePredictor/BasketballScorePredictor.github.io/blob/main/DataCollection/getGamesHalfStats.py) is the code.

The NBA dataset can be found [here.](https://www.kaggle.com/mikeycurtis/nba-half-time-statistics-20102021) The WNBA dataset can be found [here.](https://www.kaggle.com/mikeycurtis/wnba-half-time-statistics) Below is an example of how our final datasets are formatted.

<div style="overflow-x: auto">

<table border="1" class="dataframe">

<thead>

<tr style="text-align: center">

<th style="min-width: 150px">GAME_ID</th>

<th style="min-width: 150px">Date</th>

<th style="min-width: 150px">Matchup</th>

<th style="min-width: 150px">h_E_OFF_RATING</th>

<th style="min-width: 150px">h_OFF_RATING</th>

<th style="min-width: 150px">h_E_DEF_RATING</th>

<th style="min-width: 150px">h_DEF_RATING</th>

<th style="min-width: 150px">h_E_NET_RATING</th>

<th style="min-width: 150px">h_NET_RATING</th>

<th style="min-width: 150px">h_AST_PCT</th>

<th style="min-width: 150px">h_AST_TOV</th>

<th style="min-width: 150px">h_AST_RATIO</th>

<th style="min-width: 150px">h_OREB_PCT</th>

<th style="min-width: 150px">h_DREB_PCT</th>

<th style="min-width: 150px">h_REB_PCT</th>

<th style="min-width: 150px">h_E_TM_TOV_PCT</th>

<th style="min-width: 150px">h_TM_TOV_PCT</th>

<th style="min-width: 150px">h_EFG_PCT</th>

<th style="min-width: 150px">h_TS_PCT</th>

<th style="min-width: 150px">h_USG_PCT</th>

<th style="min-width: 150px">h_E_USG_PCT</th>

<th style="min-width: 150px">h_E_PACE</th>

<th style="min-width: 150px">h_PACE</th>

<th style="min-width: 150px">h_PACE_PER40</th>

<th style="min-width: 150px">h_POSS</th>

<th style="min-width: 150px">h_PIE</th>

<th style="min-width: 150px">h_FGM</th>

<th style="min-width: 150px">h_FGA</th>

<th style="min-width: 150px">h_FG_PCT</th>

<th style="min-width: 150px">h_FG3M</th>

<th style="min-width: 150px">h_FG3A</th>

<th style="min-width: 150px">h_FG3_PCT</th>

<th style="min-width: 150px">h_FTM</th>

<th style="min-width: 150px">h_FTA</th>

<th style="min-width: 150px">h_FT_PCT</th>

<th style="min-width: 150px">h_OREB</th>

<th style="min-width: 150px">h_DREB</th>

<th style="min-width: 150px">h_REB</th>

<th style="min-width: 150px">h_AST</th>

<th style="min-width: 150px">h_STL</th>

<th style="min-width: 150px">h_BLK</th>

<th style="min-width: 150px">h_TO</th>

<th style="min-width: 150px">h_PF</th>

<th style="min-width: 150px">h_half_PTS</th>

<th style="min-width: 150px">h_PLUS_MINUS</th>

<th style="min-width: 150px">h_final_PTS</th>

<th style="min-width: 150px">a_E_OFF_RATING</th>

<th style="min-width: 150px">a_OFF_RATING</th>

<th style="min-width: 150px">a_E_DEF_RATING</th>

<th style="min-width: 150px">a_DEF_RATING</th>

<th style="min-width: 150px">a_E_NET_RATING</th>

<th style="min-width: 150px">a_NET_RATING</th>

<th style="min-width: 150px">a_AST_PCT</th>

<th style="min-width: 150px">a_AST_TOV</th>

<th style="min-width: 150px">a_AST_RATIO</th>

<th style="min-width: 150px">a_OREB_PCT</th>

<th style="min-width: 150px">a_DREB_PCT</th>

<th style="min-width: 150px">a_REB_PCT</th>

<th style="min-width: 150px">a_E_TM_TOV_PCT</th>

<th style="min-width: 150px">a_TM_TOV_PCT</th>

<th style="min-width: 150px">a_EFG_PCT</th>

<th style="min-width: 150px">a_TS_PCT</th>

<th style="min-width: 150px">a_USG_PCT</th>

<th style="min-width: 150px">a_E_USG_PCT</th>

<th style="min-width: 150px">a_E_PACE</th>

<th style="min-width: 150px">a_PACE</th>

<th style="min-width: 150px">a_PACE_PER40</th>

<th style="min-width: 150px">a_POSS</th>

<th style="min-width: 150px">a_PIE</th>

<th style="min-width: 150px">a_FGM</th>

<th style="min-width: 150px">a_FGA</th>

<th style="min-width: 150px">a_FG_PCT</th>

<th style="min-width: 150px">a_FG3M</th>

<th style="min-width: 150px">a_FG3A</th>

<th style="min-width: 150px">a_FG3_PCT</th>

<th style="min-width: 150px">a_FTM</th>

<th style="min-width: 150px">a_FTA</th>

<th style="min-width: 150px">a_FT_PCT</th>

<th style="min-width: 150px">a_OREB</th>

<th style="min-width: 150px">a_DREB</th>

<th style="min-width: 150px">a_REB</th>

<th style="min-width: 150px">a_AST</th>

<th style="min-width: 150px">a_STL</th>

<th style="min-width: 150px">a_BLK</th>

<th style="min-width: 150px">a_TO</th>

<th style="min-width: 150px">a_PF</th>

<th style="min-width: 150px">a_half_PTS</th>

<th style="min-width: 150px">a_PLUS_MINUS</th>

<th style="min-width: 150px">a_final_PTS</th>

</tr>

</thead>

<tbody>

<tr style="text-align: center">

<td>22000992</td>

<td>2021-05-05</td>

<td>ATL vs. PHX</td>

<td>144.4</td>

<td>139.6</td>

<td>140.8</td>

<td>135.4</td>

<td>3.6</td>

<td>4.2</td>

<td>0.640</td>

<td>2.00</td>

<td>23.4</td>

<td>0.400</td>

<td>0.727</td>

<td>0.595</td>

<td>17.241</td>

<td>16.7</td>

<td>0.725</td>

<td>0.755</td>

<td>1.0</td>

<td>0.202</td>

<td>92.56</td>

<td>96.0</td>

<td>80.00</td>

<td>48.0</td>

<td>0.538</td>

<td>25</td>

<td>40</td>

<td>0.625</td>

<td>8</td>

<td>13</td>

<td>0.615</td>

<td>9</td>

<td>10</td>

<td>0.900</td>

<td>6</td>

<td>16</td>

<td>22</td>

<td>16</td>

<td>2</td>

<td>2</td>

<td>8</td>

<td>10</td>

<td>67</td>

<td>2.0</td>

<td>135</td>

<td>140.8</td>

<td>135.4</td>

<td>144.4</td>

<td>139.6</td>

<td>-3.6</td>

<td>-4.2</td>

<td>0.435</td>

<td>5.00</td>

<td>16.1</td>

<td>0.273</td>

<td>0.600</td>

<td>0.405</td>

<td>4.333</td>

<td>4.2</td>

<td>0.614</td>

<td>0.648</td>

<td>1.0</td>

<td>0.203</td>

<td>92.56</td>

<td>96.0</td>

<td>80.00</td>

<td>48.0</td>

<td>0.462</td>

<td>23</td>

<td>44</td>

<td>0.523</td>

<td>8</td>

<td>18</td>

<td>0.444</td>

<td>11</td>

<td>14</td>

<td>0.786</td>

<td>6</td>

<td>9</td>

<td>15</td>

<td>10</td>

<td>6</td>

<td>2</td>

<td>2</td>

<td>7</td>

<td>65</td>

<td>-2.0</td>

<td>103</td>

</tr>

<tr style="text-align: center">

<td>22000991</td>

<td>2021-05-05</td>

<td>POR @ CLE</td>

<td>116.1</td>

<td>118.8</td>

<td>133.6</td>

<td>136.7</td>

<td>-17.4</td>

<td>-18.0</td>

<td>0.652</td>

<td>2.50</td>

<td>21.4</td>

<td>0.269</td>

<td>0.636</td>

<td>0.438</td>

<td>12.225</td>

<td>12.5</td>

<td>0.587</td>

<td>0.581</td>

<td>1.0</td>

<td>0.196</td>

<td>99.24</td>

<td>97.0</td>

<td>80.83</td>

<td>48.0</td>

<td>0.420</td>

<td>23</td>

<td>46</td>

<td>0.500</td>

<td>8</td>

<td>16</td>

<td>0.500</td>

<td>3</td>

<td>7</td>

<td>0.429</td>

<td>6</td>

<td>14</td>

<td>20</td>

<td>15</td>

<td>6</td>

<td>0</td>

<td>5</td>

<td>11</td>

<td>57</td>

<td>-10.0</td>

<td>105</td>

<td>133.6</td>

<td>136.7</td>

<td>116.1</td>

<td>118.8</td>

<td>17.4</td>

<td>18.0</td>

<td>0.542</td>

<td>2.17</td>

<td>18.8</td>

<td>0.364</td>

<td>0.731</td>

<td>0.563</td>

<td>11.962</td>

<td>12.2</td>

<td>0.636</td>

<td>0.668</td>

<td>1.0</td>

<td>0.196</td>

<td>99.24</td>

<td>97.0</td>

<td>80.83</td>

<td>49.0</td>

<td>0.580</td>

<td>24</td>

<td>44</td>

<td>0.545</td>

<td>8</td>

<td>15</td>

<td>0.533</td>

<td>11</td>

<td>14</td>

<td>0.786</td>

<td>6</td>

<td>18</td>

<td>24</td>

<td>13</td>

<td>4</td>

<td>5</td>

<td>6</td>

<td>8</td>

<td>67</td>

<td>10.0</td>

<td>141</td>

</tr>

<tr style="text-align: center">

<td>22000994</td>

<td>2021-05-05</td>

<td>HOU vs. PHI</td>

<td>121.7</td>

<td>121.2</td>

<td>143.1</td>

<td>144.2</td>

<td>-21.4</td>

<td>-23.1</td>

<td>0.625</td>

<td>3.75</td>

<td>20.6</td>

<td>0.214</td>

<td>0.619</td>

<td>0.388</td>

<td>7.728</td>

<td>7.7</td>

<td>0.567</td>

<td>0.586</td>

<td>1.0</td>

<td>0.197</td>

<td>104.16</td>

<td>104.0</td>

<td>86.67</td>

<td>52.0</td>

<td>0.406</td>

<td>24</td>

<td>52</td>

<td>0.462</td>

<td>11</td>

<td>28</td>

<td>0.393</td>

<td>4</td>

<td>4</td>

<td>1.000</td>

<td>6</td>

<td>13</td>

<td>19</td>

<td>15</td>

<td>3</td>

<td>1</td>

<td>4</td>

<td>8</td>

<td>63</td>

<td>-12.0</td>

<td>115</td>

<td>143.1</td>

<td>144.2</td>

<td>121.7</td>

<td>121.2</td>

<td>21.4</td>

<td>23.1</td>

<td>0.464</td>

<td>2.60</td>

<td>18.2</td>

<td>0.381</td>

<td>0.786</td>

<td>0.612</td>

<td>9.542</td>

<td>9.6</td>

<td>0.673</td>

<td>0.702</td>

<td>1.0</td>

<td>0.202</td>

<td>104.16</td>

<td>104.0</td>

<td>86.67</td>

<td>52.0</td>

<td>0.594</td>

<td>28</td>

<td>49</td>

<td>0.571</td>

<td>10</td>

<td>17</td>

<td>0.588</td>

<td>9</td>

<td>10</td>

<td>0.900</td>

<td>6</td>

<td>21</td>

<td>27</td>

<td>13</td>

<td>4</td>

<td>2</td>

<td>5</td>

<td>6</td>

<td>75</td>

<td>12.0</td>

<td>135</td>

</tr>

</tbody>

</table>

</div>

* * *
### Dealing With Missing Data

The data set we obtained is for the most part free of missing data. Columns that concern rebounding percentage have the most missing data. This is because the NBA started recording rebounding percentage in 1970, nearly 20 years after they started recording stats. To remedy this, we can just drop those columns. The stat is largely derived from the total rebounds which doesn't have missing data so we won't lose very much information by dropping these columns.

There is another set of columns that are mssing about 300 data points. Because this is such a small percentage of the data, I can drop these rows that are missing. In the results above, you can see that a majority of rows have 14683 entries, and all the ones missing a few hundred have exactly 14325. Because they are missing the same amount of data, I'm going to assume they are from the same rows and remove those rows.

As we suspected the rows with just a few hundred missing data points were from the same rows. The dataset now contains 81 columns and 14325 entries, with no mssing values. Now we can move forward with some data visualization to get an initial understanding about relationships present in the data.

### Data Visualization

The goal for this process of data visualization is to first see if there are any underlying relationships that are present in our data. This will make the process of constructing models much more effiecient. I will also look out for statistics that have no effect on final score. If a column adds little to no information, it won't provide any value if trained on by a model. Therefore it wouldn't make sense to keep and we can drop the statistic.

Something else that we will look into is if there is any correlation between one team's final score, and any of the opposing team's statistics. An example of this would be if the home team's final score is affected by the away team's number of turnovers. The reason this is important is that if that if there are no strong correlations, we will be able to effectively double the amount of data we have by splitting up the data into home and away statistics, then appending one to another and adding an extra column indicating whether or not they are the home team. If we are able to do this, we will have twice as many rows which could give our models more data to train and test on. 

The first thing I will look at is a heat map of the correlations each column has to one another. This will give me ideas of what I need to look into.


![Correlation Heatmap](/images/CorrelationHeatmap.png)

It became imedietely apparant that many of our columns were correlated to each other. This is due to the advanced stats present in our dataset. Advanced stats are derived from the base stats you would see in the box score in one way or another. An example of this is the advanced statistic called Offensive Rating. It is used to get an idea of how well the offense is performing without penalizing teams that play at a slower pace. It is derived from the following formula:

![OFF Rating](/images/OFF_RATING_equation.png)

The relationship is easy to see when looking at a scatterplot of the `OFF_rating` and `Points`

![OFF_rating vs Half Points](/images/OFF_rating_vs_half_points.png)

### Results of Multicolinearity 

It became evident that many of the statistics we were able to gather data on were related to each other in some form or another. Through these scatter plots it is easy to confirm our suspicious developed from the heatmap. 

#### A Decision

There seemed to be a decision to make. Either using the advanced or derived statistics such as `h_OFF_RATING` and `h_AST_RATIO` or using more base stats such as `h_FGM` and `h_REB`. It would not make sense to use both because they contain similar information and would be redundant.

There were tradeoffs to each of them. Both groups of statistics have some sort of correlation to final score. However, the correlations are generally stronger on the derived statistics. Our hypothesis on why this is, is that these statisitcs were derived for the very purpose of giving some sort of insight to the game. `h_OFF_RATING` for example is meant to give insight into the performance of the offense as a whole, where an individual statistic like `h_FGA` will only give insight on how many times the home team has shot. This comes at the tradeoff that there are fewer of these derived statistics. This could also be a pro if it helped train our model to similar accuracy with less data. 

Using base statistics also has its benefits. First off, there are more of them that have a significant degree of correlation than the derived statistics. This could give our model more data points to train on. There could also be an advantage when it comes to inputting the data once we have a trained model. One of our end goals is to deploy the model using onto the web so that it is usable. Our options are to manually input the data or find a way to get live data during halftime of a desired games. It would be easier on the user to input base statistics which can easily be found on the box score of a game. While it would be doable to have the user input base statistics and derive the statistics ourselves, oftentimes, they are derived on other derived statistics which could greatly complicate the process of inputting data. So if there is little to no accuracy gained by using derived statistics to create a model, then perhaps it would make more sense to just use base statistics. 

#### The Choice

After some testing with various combinations of derived statistics and various combinations of base statistics, models trained on base statistics tend to perform more consistently. Because of this, we choose to implement a model using base statistics.

After testing models the best combination of base statistics turned out to be all of them except the `REB` because it was accounted for in `OREB` and `DREB`. More on the exact parameters later on. 

### Correlations to Final Score

Now we will look into various statistics correlation to `h_final_PTS` and `a_final_PTS`. This will help us find the columns that add the most accuracy to the model. 


### Creating a Simple GUI For the Model

We found it slightly inconvenient to manually type in every statistic for a game that you want a prediction for, so we created a small gui application for our model using Tkinter and endpoints from nba.com.

We wanted to be able to select from a list of active games to revieve a prediction for. Therefore, we needed to send a request to an endpoint that would give us a list of active games along with their unique game IDs.

We found this endpoint by right clicking on the nba.com homepage and clicking inspect. In the inspection window, we then went under the Network and XHR tabs and refreshed the page. Once refreshed, a list of requests that the webpage was making showed up and after searching through some endpoints, we found exactly what we were looking for.

Using Requests, JSON, and BeautifulSoup, we retrieved the data that we needed from this endpoint to create a dropdown list of active games. Here is an image:

![dropdown](/images/selecting_game.png) 

*Note that there was only one live game that was on when this screenshot was captured, but if there are multiple games on at once then they will all show up.

We needed to find a way to retrieve the half time statistics for whatever game we chose from the dropdown box. To do this we searched through more endpoints in the same way as aforementioned, and we came across one that had the live play-by-play data for active games.

We then wrote a python script to iterate through the play-by-play data and retrieve the desired half time statistics to feed in the model.

After selecting the game that you want a prediction for, you simply click the "Get Stats" button, and the prediction for that game will be outputted. 

![dropdown](/images/final_prediction.png)

To use this app, just download this repository and cd into the PredictionApp directory. From there type "python3 main.py" into the terminal.
