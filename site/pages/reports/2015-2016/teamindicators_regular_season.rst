

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
| 1 | Landstede Basketbal    | 0.90 | 9.00 | 1.00 | 18.72     | 103.98    | 85.26     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | BS Leiden              | 0.78 | 7.00 | 2.00 | 16.01     | 100.46    | 84.45     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Dukes Unlimited        | 0.60 | 6.00 | 4.00 | 11.34     | 107.12    | 95.78     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | GasTerra Flames        | 0.50 | 5.00 | 5.00 | 5.25      | 100.92    | 95.67     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal    | 0.40 | 4.00 | 6.00 | -0.82     | 93.42     | 94.24     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BC APOLLO A'dam        | 0.38 | 3.00 | 5.00 | -3.76     | 94.73     | 98.49     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden          | 0.33 | 3.00 | 6.00 | -17.20    | 88.37     | 105.58    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.10 | 1.00 | 9.00 | -30.40    | 78.73     | 109.13    |
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

    ##              Nrtg       EFGpct        ORpct        TOpct        FT4f
    ## Nrtg    1.0000000  0.632391785  0.377197975 -0.444036697  0.09039390
    ## EFGpct  0.6323918  1.000000000  0.005973829 -0.103359772  0.04633681
    ## ORpct   0.3771980  0.005973829  1.000000000 -0.006114679  0.14350863
    ## TOpct  -0.4440367 -0.103359772 -0.006114679  1.000000000 -0.14438536
    ## FT4f    0.0903939  0.046336807  0.143508627 -0.144385361  1.00000000



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
