

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
| 1 | GasTerra Flames        | 0.89 | 8.00 | 1.00 | 26.79     | 109.59    | 82.80     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Landstede Basketbal    | 0.78 | 7.00 | 2.00 | 7.93      | 104.30    | 96.37     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | BS Leiden              | 0.67 | 6.00 | 3.00 | 4.31      | 91.95     | 87.64     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BC APOLLO A'dam        | 0.56 | 5.00 | 4.00 | -4.06     | 104.11    | 108.16    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BV Leeuwarden          | 0.33 | 3.00 | 6.00 | -9.14     | 96.52     | 105.66    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Dukes Unlimited        | 0.33 | 3.00 | 6.00 | -6.68     | 95.50     | 102.17    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Rotterdam Basketbal    | 0.33 | 3.00 | 6.00 | -8.42     | 89.33     | 97.75     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.11 | 1.00 | 8.00 | -10.73    | 92.66     | 103.40    |
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

    ##              Nrtg     EFGpct      ORpct       TOpct       FT4f
    ## Nrtg    1.0000000 0.57461103 0.36985874 -0.16394928 0.15749945
    ## EFGpct  0.5746110 1.00000000 0.09668528  0.01587432 0.02360747
    ## ORpct   0.3698587 0.09668528 1.00000000  0.08103112 0.09676167
    ## TOpct  -0.1639493 0.01587432 0.08103112  1.00000000 0.08835612
    ## FT4f    0.1574994 0.02360747 0.09676167  0.08835612 1.00000000



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
