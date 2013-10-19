


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.


.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
   * team summary should contain W/L, win pct, median Ortg, Drtg, Nrtg
   * format tables


2012-2013 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name                  | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+===========================+======+=======+=======+===========+===========+===========+
| 1  | EBBC                      | 0.83 | 30.00 | 6.00  | 21.19     | 116.32    | 95.13     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | BS Leiden                 | 0.75 | 27.00 | 9.00  | 16.96     | 108.98    | 92.02     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | GasTerra Flames           | 0.72 | 26.00 | 10.00 | 7.71      | 107.27    | 99.57     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | BV Aris                   | 0.56 | 20.00 | 16.00 | 4.93      | 108.26    | 103.33    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Landstede Basketbal       | 0.53 | 19.00 | 17.00 | 2.98      | 107.54    | 104.56    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | Den Helder Kings Noordkop | 0.50 | 18.00 | 18.00 | -1.86     | 97.96     | 99.82     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Matrixx Magixx            | 0.47 | 17.00 | 19.00 | -3.15     | 106.72    | 109.86    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | Basketball Stars Weert    | 0.44 | 16.00 | 20.00 | -6.78     | 100.27    | 107.04    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.11 | 4.00  | 32.00 | -19.38    | 92.94     | 112.32    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Rotterdam Basketbal       | 0.08 | 3.00  | 33.00 | -22.60    | 97.17     | 119.77    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+




Ratings and Pace
----------------


.. figure:: figure/rating-quadrant.png
    :alt: 

    



.. figure:: figure/net-rating.png
    :alt: 

    



.. figure:: figure/off-rating.png
    :alt: 

    



.. figure:: figure/def-rating.png
    :alt: 

    



.. figure:: figure/pace-by-team.png
    :alt: 

    


Four Factors
------------

The net rating is plotted against all "four factors"
for all games in this competition.
These plots show us how each of the four factors influences the net rating.
Because we can assume the net rating to be the best indicator of actually winning games,
these plots show how and how strongly each of the four factors contribute to winning basketball games in the DBL in this season. 


.. figure:: figure/net-rating-by-four-factor.png
    :alt: 

    


The correlation matrix for the four factors and the net rating is displayed below:



::

    ##           Nrtg   EFGpct  ORpct    TOpct  FTTpct
    ## Nrtg    1.0000  0.60587 0.4942 -0.22099 0.11939
    ## EFGpct  0.6059  1.00000 0.2064 -0.10716 0.01536
    ## ORpct   0.4942  0.20640 1.0000  0.12402 0.01910
    ## TOpct  -0.2210 -0.10716 0.1240  1.00000 0.03972
    ## FTTpct  0.1194  0.01536 0.0191  0.03972 1.00000




By Team
^^^^^^^


.. figure:: figure/efg-by-team.png
    :alt: 

    



.. figure:: figure/or-pct-by-team.png
    :alt: 

    



.. figure:: figure/to-pct-team.png
    :alt: 

    



.. figure:: figure/ftt-pct-team.png
    :alt: 

    


By Opponent
^^^^^^^^^^^


.. figure:: figure/opp-efg-by-team.png
    :alt: 

    



.. figure:: figure/opp-or-pct-by-team.png
    :alt: 

    



.. figure:: figure/opp-to-pct-team.png
    :alt: 

    



.. figure:: figure/opp-ftt-pct-team.png
    :alt: 

    


Points
------


.. figure:: figure/point-differential-by-team.png
    :alt: 

    

