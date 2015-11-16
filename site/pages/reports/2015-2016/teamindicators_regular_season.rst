

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
| 1 | Landstede Basketbal    | 0.83 | 5.00 | 1.00 | 16.58     | 101.33    | 84.74     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | BS Leiden              | 0.67 | 4.00 | 2.00 | 12.95     | 97.89     | 84.94     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Dukes Unlimited        | 0.67 | 4.00 | 2.00 | 13.04     | 107.74    | 94.70     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | GasTerra Flames        | 0.57 | 4.00 | 3.00 | 8.84      | 102.78    | 93.94     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BC APOLLO A'dam        | 0.50 | 3.00 | 3.00 | -1.35     | 96.84     | 98.19     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal    | 0.43 | 3.00 | 4.00 | -5.36     | 91.96     | 97.32     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden          | 0.33 | 2.00 | 4.00 | -15.39    | 85.84     | 101.23    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.00 | 0.00 | 6.00 | -29.90    | 80.90     | 110.80    |
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

    ##              Nrtg       EFGpct       ORpct      TOpct         FT4f
    ## Nrtg    1.0000000  0.678615484  0.24581095 -0.4408326  0.138538025
    ## EFGpct  0.6786155  1.000000000 -0.02788112 -0.1139316 -0.001767757
    ## ORpct   0.2458109 -0.027881125  1.00000000  0.0436325  0.278958115
    ## TOpct  -0.4408326 -0.113931634  0.04363250  1.0000000 -0.168319471
    ## FT4f    0.1385380 -0.001767757  0.27895811 -0.1683195  1.000000000



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
