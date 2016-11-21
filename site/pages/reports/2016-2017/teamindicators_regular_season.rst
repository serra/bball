

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
| 1 | GasTerra Flames        | 0.88 | 7.00 | 1.00 | 27.31     | 110.29    | 82.99     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | BS Leiden              | 0.75 | 6.00 | 2.00 | 5.37      | 91.98     | 86.61     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Landstede Basketbal    | 0.75 | 6.00 | 2.00 | 6.58      | 103.90    | 97.32     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BC APOLLO A'dam        | 0.62 | 5.00 | 3.00 | -2.96     | 104.78    | 107.74    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BV Leeuwarden          | 0.38 | 3.00 | 5.00 | -7.45     | 98.42     | 105.87    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal    | 0.38 | 3.00 | 5.00 | -7.13     | 89.40     | 96.53     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Dukes Unlimited        | 0.25 | 2.00 | 6.00 | -8.02     | 95.45     | 103.47    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.00 | 0.00 | 8.00 | -13.68    | 90.30     | 103.98    |
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
    ## Nrtg    1.0000000  0.54575681 0.40115512 -0.19878298 0.16985036
    ## EFGpct  0.5457568  1.00000000 0.13663263 -0.01457023 0.03843673
    ## ORpct   0.4011551  0.13663263 1.00000000  0.09750832 0.07177118
    ## TOpct  -0.1987830 -0.01457023 0.09750832  1.00000000 0.09925674
    ## FT4f    0.1698504  0.03843673 0.07177118  0.09925674 1.00000000



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
