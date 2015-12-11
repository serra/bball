

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
| 3 | Dukes Unlimited        | 0.56 | 5.00 | 4.00 | 11.36     | 108.06    | 96.70     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | GasTerra Flames        | 0.56 | 5.00 | 4.00 | 7.06      | 102.41    | 95.34     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BC APOLLO A'dam        | 0.38 | 3.00 | 5.00 | -3.76     | 94.73     | 98.49     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BV Leeuwarden          | 0.33 | 3.00 | 6.00 | -17.20    | 88.37     | 105.58    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Rotterdam Basketbal    | 0.33 | 3.00 | 6.00 | -6.77     | 91.19     | 97.96     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.11 | 1.00 | 8.00 | -27.92    | 80.72     | 108.64    |
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

    ##               Nrtg       EFGpct       ORpct       TOpct        FT4f
    ## Nrtg    1.00000000  0.651696143 0.311983870 -0.45357985  0.04280993
    ## EFGpct  0.65169614  1.000000000 0.006133775 -0.13079720  0.02988679
    ## ORpct   0.31198387  0.006133775 1.000000000  0.03279232  0.11752140
    ## TOpct  -0.45357985 -0.130797196 0.032792323  1.00000000 -0.14725167
    ## FT4f    0.04280993  0.029886791 0.117521399 -0.14725167  1.00000000



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
