

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2015-2016 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name               | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+========================+======+======+======+===========+===========+===========+
| 1 | Landstede Basketbal    | 0.88 | 7.00 | 1.00 | 16.75     | 101.76    | 85.01     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | BS Leiden              | 0.75 | 6.00 | 2.00 | 14.11     | 98.74     | 84.62     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | GasTerra Flames        | 0.62 | 5.00 | 3.00 | 8.83      | 101.65    | 92.82     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Dukes Unlimited        | 0.50 | 4.00 | 4.00 | 7.72      | 104.68    | 96.96     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BV Leeuwarden          | 0.43 | 3.00 | 4.00 | -11.88    | 88.24     | 100.11    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BC APOLLO A'dam        | 0.38 | 3.00 | 5.00 | -3.76     | 94.73     | 98.49     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Rotterdam Basketbal    | 0.33 | 3.00 | 6.00 | -6.77     | 91.19     | 97.96     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.12 | 1.00 | 7.00 | -25.64    | 82.80     | 108.44    |
+---+------------------------+------+------+------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.


.. figure:: figure/rating-quadrant-1.png
    :alt: 

    


.. figure:: figure/net-rating-1.png
    :alt: 

    


.. figure:: figure/off-rating-1.png
    :alt: 

    


.. figure:: figure/def-rating-1.png
    :alt: 

    

Pace
----


.. figure:: figure/pace-by-team-1.png
    :alt: 

    

Points
------


.. figure:: figure/point-differential-by-team-1.png
    :alt: 

    

Four Factors
------------

The net rating is plotted against all "four factors"
for all games in this competition.
These plots show us how each of the four factors influences the net rating.
Because we can assume the net rating to be the best indicator of actually winning games,
these plots show how and how strongly each of the four factors contribute to winning basketball games in the DBL in this season. 


.. figure:: figure/net-rating-by-four-factor-1.png
    :alt: 

    

The correlation matrix for the four factors and the net rating is displayed below:



::

    ##               Nrtg       EFGpct        ORpct       TOpct        FT4f
    ## Nrtg    1.00000000  0.676578261  0.270830289 -0.41454539  0.08288333
    ## EFGpct  0.67657826  1.000000000 -0.004578247 -0.10701331 -0.03450472
    ## ORpct   0.27083029 -0.004578247  1.000000000  0.08060689  0.18147436
    ## TOpct  -0.41454539 -0.107013309  0.080606888  1.00000000 -0.14855272
    ## FT4f    0.08288333 -0.034504720  0.181474363 -0.14855272  1.00000000



Offense
^^^^^^^

This shows the four factors for each of the teams.


.. figure:: figure/efg-by-team-1.png
    :alt: 

    


.. figure:: figure/or-pct-by-team-1.png
    :alt: 

    


.. figure:: figure/to-pct-team-1.png
    :alt: 

    


.. figure:: figure/ftt-pct-team-1.png
    :alt: 

    

Defense
^^^^^^^

This shows the four factors of the team's opponents for each of the teams.


.. figure:: figure/opp-efg-by-team-1.png
    :alt: 

    


.. figure:: figure/opp-or-pct-by-team-1.png
    :alt: 

    


.. figure:: figure/opp-to-pct-team-1.png
    :alt: 

    


.. figure:: figure/opp-ftt-pct-team-1.png
    :alt: 

    


Shot selection
--------------


.. figure:: figure/shot-selection-ftt-team-1.png
    :alt: 

    


.. figure:: figure/shot-selection-2s-team-1.png
    :alt: 

    


.. figure:: figure/shot-selection-3s-team-1.png
    :alt: 

    


.. figure:: figure/shot-selection-history-team-1.png
    :alt: 

    



.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
