

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
| 1 | GasTerra Flames        | 0.90 | 9.00 | 1.00 | 29.11     | 109.88    | 80.77     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | BS Leiden              | 0.70 | 7.00 | 3.00 | 4.81      | 92.36     | 87.54     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Landstede Basketbal    | 0.70 | 7.00 | 3.00 | 6.56      | 104.01    | 97.45     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BC APOLLO A'dam        | 0.50 | 5.00 | 5.00 | -3.91     | 104.08    | 107.99    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Dukes Unlimited        | 0.40 | 4.00 | 6.00 | -5.44     | 96.66     | 102.10    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal    | 0.40 | 4.00 | 6.00 | -7.32     | 91.03     | 98.36     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden          | 0.30 | 3.00 | 7.00 | -9.16     | 95.53     | 104.70    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.10 | 1.00 | 9.00 | -14.66    | 89.64     | 104.31    |
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

    ##              Nrtg      EFGpct      ORpct       TOpct       FT4f
    ## Nrtg    1.0000000  0.56740655 0.39698807 -0.20472627 0.25509038
    ## EFGpct  0.5674065  1.00000000 0.09690979 -0.03026491 0.05141111
    ## ORpct   0.3969881  0.09690979 1.00000000  0.07029015 0.14875368
    ## TOpct  -0.2047263 -0.03026491 0.07029015  1.00000000 0.06530251
    ## FT4f    0.2550904  0.05141111 0.14875368  0.06530251 1.00000000



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
