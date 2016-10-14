

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
| 1 | BS Leiden              | 1.00 | 1.00 | 0.00 | 25.97     | 96.10     | 70.13     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | BV Leeuwarden          | 1.00 | 1.00 | 0.00 | 1.18      | 117.65    | 116.47    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | GasTerra Flames        | 1.00 | 2.00 | 0.00 | 25.00     | 108.55    | 83.55     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Landstede Basketbal    | 1.00 | 1.00 | 0.00 | 19.40     | 132.84    | 113.43    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BC APOLLO A'dam        | 0.00 | 0.00 | 1.00 | -19.40    | 113.43    | 132.84    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Basketball Stars Weert | 0.00 | 0.00 | 2.00 | -9.68     | 102.39    | 112.07    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Dukes Unlimited        | 0.00 | 0.00 | 1.00 | -31.82    | 78.79     | 110.61    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Rotterdam Basketbal    | 0.00 | 0.00 | 1.00 | -25.97    | 70.13     | 96.10     |
+---+------------------------+------+------+------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 5 rows containing missing values (geom_point).



::

    ## Warning: Removed 5 rows containing missing values (geom_text).


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

    ##              Nrtg     EFGpct      ORpct      TOpct       FT4f
    ## Nrtg    1.0000000  0.6439317  0.1542361 -0.3476468 -0.3744906
    ## EFGpct  0.6439317  1.0000000  0.3566249 -0.5599294 -0.5522627
    ## ORpct   0.1542361  0.3566249  1.0000000 -0.1043555  0.2633557
    ## TOpct  -0.3476468 -0.5599294 -0.1043555  1.0000000  0.2307417
    ## FT4f   -0.3744906 -0.5522627  0.2633557  0.2307417  1.0000000



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
