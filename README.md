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

#### Doubling the data
Notice that we've only been looking into data about the home team denoted by the prefix `h_` before each statistic. This is not without reasoning. After looking into multicollinearity, I noticed that most of opposing teams statistics from each game were correlated to each other. So the idea came to split the data set down the middle by home and away statistics, then append home statistics to away statistics. Essentially halving the number of columns and doubling the number of rows of the data. If the other teams statistics add no value to the predicted score then we would be able to double the amount of data available to train a model with. 

To see if this is reasonable, we will investigate how final score is correlated to opposing teams statistics. 
If opposing teams statistics are not correlated or, if they are correlated but strongly correlated to an opposing teams stat then this idea will be put in to action.

![Away Turnovers vs Home Final Score](/images/aTO_vs_hFinalPTS.png)

![Away Feild Goals Made vs Home Final Score](/images/aFGM_vs_hFinalPTS.png)

#### Doubling the Data Verdict

After looking into correlation between opposing teams statistics, there is little evidence of an opposite teams statistic adding any information about final

### Correlations to Final Score

Now we will look into various statistics correlation to `final_PTS`. This will help us find the columns that add the most accuracy to the model. After looking deeper into the relationships between final scores our suspicions from the heatmap were confirmed once again. Some columns that had high correlation were `half_PTS`, `FGM` and `AST`. A few that seemed to have little to no correlation were `PF` and `TO`.

### Model Construction
#### Choosing the package
This was the first project each of us have worked on that involved machine learning. Because of this we wanted to test a variety of different models to develop a breadth of knowledge. So we tried a few different models, starting with a simple linear regression and ending up utilizing a TensorFlow Sequential model. Although these two models took up most of our time, we also explored a KNN model, a gradient boosted machine and a random forest. We ended up using a TensorFlow Sequential model because it produced the best mean absolute error. This was important because we want our model to predict the final score of NBA games with the least amount of error. 

#### Linear Regression
To see where a general model stood, we predicted the final score on a few simple compositions of variables. These included using the four factors, difference of the four factors (home - away), and using all of the halftime variables at once. At best, these models yielded an R-Squared value of about 0.534. This meant that only 53.4% of the variability in the final score was accounted for by a change in the variables we had defined in the models. In order for our model to be effective enough, we determined from this result that we should aim for a minimum R-Squared value of 0.7.

#### Tuning
Although at this point we're far from our goal, there are a variety of methods to try out that can improve results by determining the most important variables, scaling the outputs, and preventing overfitting. Forward and backward stepwise selection are variable selection methods that perform similarly. In order to determine the best model, these methods either add or remove variables and determine superiority based on a specified comparison criterion. After trying out both forward and backward stepwise selection, the resulting models had a negative impact on R-Squared because they improved overfitting by simplifying the model. Next, we looked into whether applying a box-cox transformation could prove useful. This entails constructing a confidence interval to determine the best value for transformation. The following graph shows that the transformation should be applied for a lambda value of 0.75.
![BoxCox Transformation](/LinReg/boxcox.jpg)

We know that a transformation is appropriate because the interval didn't contain one, the default value. This response transformation yielded an R-Squared value of 0.556, which is definitely an improvement. After experimenting with a variety of other methods like accounting for interactions among variables and trying polynomial regression, nothing could break through to 0.6 R-Squared or higher. The following is the final model output after applying the repsonse transformation.
![OptimalMod](/LinReg/OptimalMod1.jpg)

#### Linear Regression Verdict
Ultimately, basketball is a game where there are many paths to victory. This phrase means that a team does not have to perform in a specific way every game in order to win. Winning can come as a result of great shooting, stellar defense, or dominant rebounding. Intuitively, it appears that our lackluster performance from linear regression models is a direct consequence of this phenomenon. A linear model cannot account for these many combinations that can result in victory, as each variable can only positively or negatively impact the predicted final score. Although linear regression served as a good starting point for our modeling efforts, we're not satisfied with the results. Moving forward, we start to implement a model that is better equipped to account for these intricacies.

#### Models.py
To help in the training and hyperparameterization tuning in Tensorflow we created a small package to help. This includes funcitons to help compile, fit and test models. 

Now we will get into the actual construction of models. Remember from the EDA, we realized there were 2 classes of variables correlated to final score, advanced statisitcs and base statistics. We will begin by testing which performs better. If they perform similarily, we will go with the base statistics to keep things simple and to make deployment easier.

RESULTS FOR ADVANCED STATISTICS MODELS:
![Advanced Statistics Models](/images/AdvancedHyperparameters.png)


RESULTS FOR BASE STATISTICS MODELS:
![Base Statistics Models](/images/BaseHyperparameters.png)

The results were quite similar between the 2 different classes of statistics (advanced and base). Note that the return MAE will vary each time the above codes are run. I selected the class of data and hyperparameters based on what consistently performed best. 

The hyperparameters that consistently performed the best was with 2 layers of 64 nodes using the mean squared erorr as the loss function. This will be the model we construct to make our predicions.

#### Overfitting
When initially training models, there overfitting was imedietely evident due to the validation loss diverging from the loss. This meant that the model was doing worse on data it hadn't seen while training. So the model began to recognize individual games in the training set which improved training loss while worsening validation loss. This is bad because we need the model to perform well on games in the future that the model hasn't seen while training. To combat this, we implemented dropout layers between each dense layer. We also implemented an Earlystop callback to stop training the model once no progress was made. Combined, these drasticlaly reduced overfitting and made it a nonfactor.

![Overfitting](/images/Overfitting.png)

#### WNBA Model
The results we got from our model trained to predict the final score of NBA predicted games wasn't performing quite to the accuracy we were hoping for. One way we tried to remedy this was to look for more data. During this process, we came across data from WNBA games. We had heard that WNBA are easier to predict so we went ahead and tried training a similar model on WNBA data and see if any improvements were made. 

To do this we will use the same technique used with NBA data and see if there are any noticeable differences. We will jump straight to training models with base statistics so we won't need the derived statistics in our doubled dataset. The best performing model for predicting WNBA games had 4 layers, 128 nodes and used the mean squared error loss function. We will train a model with the selected hyperparameters and save it so that we can deploy it.

#### Results
The metric we decided to use to judge model performance was Mean Absolute Error. MAE makes the most sense in the context of basketball games because it represents the average amount of points the predictions were off by, directly relating to the game of basketball. The final NBA model had a MAE of 6.8 and the final WNBA model had a MAE of 5.2. 

### Gradio Interface
We wanted an easy to implement and use interface that we could use to make these predictions in a timely manner. To do this, we used Gradio. Gradio allowed us to create a simple interface where we manually input box score statistics and displays the predicted score. There are many box score statistics so it was mildly annoying the manually type them in but it worked anf was easy to use.

![Gradio Interface](/images/GradioInterface.png)

The 2021 NBA Playoffs have recently started and we've been using our model with the Gradio interface to make predictions. Here is one of the better predictions it made 
![GoodPrediction](/images/GoodPrediction.png)


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

### Key Takeaways
The WNBA model predicted with an average of 1.2 points better than the NBA model. This is an interesting result. A possible explanation is that WNBA games play 10 minute quarters instead of 12 minute quarters like the NBA. So in the second half, there is 4 minutes less of basketball being played. This could lead to better predictions because there is less time for the variability of the game of basketball to take its affect. 

#### Live Betting
At halftime, the casino's oddmakers set the over/under on how many points each team will score at the end of the game. Normally, the odds are set at -115 meaning that you need to bet $115 to win $100. With these odds, you need to win about 54% of bets to make a profit. The strategy we've been using is betting on the over/under based on the prediction our model makes. So if the over/under is set at 115.5 points and our model predicts a score of 112, then we would bet the under. So far, we're sitting at 56% of bets won which would put us at making a profit. However, this is still a small sample size of 16 bets at the time of writing this so it's too early to tell if this will profit in the long term.
