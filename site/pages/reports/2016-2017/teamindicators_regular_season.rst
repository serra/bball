

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2016-2017 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name               | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+========================+======+======+======+===========+===========+===========+
| 1 | BS Leiden              | 1.00 | 4.00 | 0.00 | 15.09     | 94.83     | 79.74     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | GasTerra Flames        | 1.00 | 4.00 | 0.00 | 29.56     | 113.88    | 84.32     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Landstede Basketbal    | 1.00 | 4.00 | 0.00 | 15.09     | 110.24    | 95.15     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BC APOLLO A'dam        | 0.50 | 2.00 | 2.00 | -7.52     | 106.72    | 114.24    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal    | 0.33 | 1.00 | 2.00 | -9.01     | 87.95     | 96.96     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BV Leeuwarden          | 0.25 | 1.00 | 3.00 | -14.50    | 91.28     | 105.77    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Basketball Stars Weert | 0.00 | 0.00 | 4.00 | -12.35    | 94.81     | 107.16    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Dukes Unlimited        | 0.00 | 0.00 | 5.00 | -14.90    | 92.33     | 107.23    |
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

    ##               Nrtg       EFGpct      ORpct       TOpct         FT4f
    ## Nrtg    1.00000000  0.499095776 0.45743250 -0.28793985  0.094536431
    ## EFGpct  0.49909578  1.000000000 0.22530858 -0.06714272 -0.009975289
    ## ORpct   0.45743250  0.225308577 1.00000000  0.08777889  0.119949150
    ## TOpct  -0.28793985 -0.067142719 0.08777889  1.00000000 -0.086571240
    ## FT4f    0.09453643 -0.009975289 0.11994915 -0.08657124  1.000000000



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
