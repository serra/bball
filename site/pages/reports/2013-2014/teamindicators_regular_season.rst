


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2013-2014 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name                  | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+===========================+======+=======+=======+===========+===========+===========+
| 1  | GasTerra Flames           | 0.89 | 31.00 | 4.00  | 25.44     | 110.81    | 85.37     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | Dukes Unlimited           | 0.79 | 26.00 | 7.00  | 18.42     | 114.26    | 95.84     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Den Helder Kings Noordkop | 0.69 | 24.00 | 11.00 | 9.60      | 111.60    | 101.99    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Landstede Basketbal       | 0.66 | 21.00 | 11.00 | 9.98      | 106.64    | 96.67     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | BS Leiden                 | 0.62 | 21.00 | 13.00 | 10.63     | 105.76    | 95.13     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | Matrixx Magixx            | 0.58 | 19.00 | 14.00 | 10.76     | 109.87    | 99.11     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | BV Aris                   | 0.30 | 10.00 | 23.00 | -10.43    | 97.91     | 108.33    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BC APOLLO A'dam           | 0.21 | 7.00  | 27.00 | -20.66    | 85.69     | 106.35    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | Rotterdam Basketbal       | 0.21 | 7.00  | 27.00 | -23.86    | 88.79     | 112.65    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.09 | 3.00  | 32.00 | -28.91    | 84.27     | 113.19    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+




Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.


.. figure:: figure/rating-quadrant.png
    :alt: 

    



.. figure:: figure/net-rating.png
    :alt: 

    



.. figure:: figure/off-rating.png
    :alt: 

    



.. figure:: figure/def-rating.png
    :alt: 

    


Pace
----


.. figure:: figure/pace-by-team.png
    :alt: 

    


Points
------


.. figure:: figure/point-differential-by-team.png
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

    ##           Nrtg   EFGpct     ORpct    TOpct     FT4f
    ## Nrtg    1.0000  0.65728  0.474893 -0.31529 0.104342
    ## EFGpct  0.6573  1.00000  0.157293 -0.11147 0.076963
    ## ORpct   0.4749  0.15729  1.000000 -0.01955 0.007523
    ## TOpct  -0.3153 -0.11147 -0.019555  1.00000 0.074743
    ## FT4f    0.1043  0.07696  0.007523  0.07474 1.000000




Offense
^^^^^^^

This shows the four factors for each of the teams.


.. figure:: figure/efg-by-team.png
    :alt: 

    



.. figure:: figure/or-pct-by-team.png
    :alt: 

    



.. figure:: figure/to-pct-team.png
    :alt: 

    



.. figure:: figure/ftt-pct-team.png
    :alt: 

    


Defense
^^^^^^^

This shows the four factors of the team's opponents for each of the teams.


.. figure:: figure/opp-efg-by-team.png
    :alt: 

    



.. figure:: figure/opp-or-pct-by-team.png
    :alt: 

    



.. figure:: figure/opp-to-pct-team.png
    :alt: 

    



.. figure:: figure/opp-ftt-pct-team.png
    :alt: 

    



Shot selection
--------------


.. figure:: figure/shot-selection-ftt-team.png
    :alt: 

    



.. figure:: figure/shot-selection-2s-team.png
    :alt: 

    



.. figure:: figure/shot-selection-3s-team.png
    :alt: 

    



.. figure:: figure/shot-selection-history-team.png
    :alt: 

    




.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
