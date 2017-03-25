

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


+---+------------------------+------+-------+-------+-----------+-----------+-----------+
|   | plg_Name               | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+========================+======+=======+=======+===========+===========+===========+
| 1 | GasTerra Flames        | 0.92 | 23.00 | 2.00  | 24.89     | 109.51    | 84.62     |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 2 | Landstede Basketbal    | 0.72 | 18.00 | 7.00  | 9.92      | 104.00    | 94.08     |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 3 | BS Leiden              | 0.64 | 16.00 | 9.00  | 5.50      | 96.73     | 91.23     |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 4 | Dukes Unlimited        | 0.52 | 13.00 | 12.00 | 0.08      | 99.00     | 98.92     |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal    | 0.46 | 11.00 | 13.00 | -3.23     | 97.08     | 100.31    |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 6 | BC APOLLO A'dam        | 0.29 | 7.00  | 17.00 | -11.45    | 97.80     | 109.25    |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 7 | BV Leeuwarden          | 0.29 | 7.00  | 17.00 | -13.46    | 96.96     | 110.42    |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.12 | 3.00  | 21.00 | -13.93    | 90.32     | 104.24    |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+



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
    ## Nrtg    1.0000000  0.65165572 0.44353107 -0.19817370 0.18114404
    ## EFGpct  0.6516557  1.00000000 0.17199374 -0.10827119 0.04972751
    ## ORpct   0.4435311  0.17199374 1.00000000  0.06542486 0.15018805
    ## TOpct  -0.1981737 -0.10827119 0.06542486  1.00000000 0.13047907
    ## FT4f    0.1811440  0.04972751 0.15018805  0.13047907 1.00000000



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
