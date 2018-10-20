

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2018-2019 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+----------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name                   | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+============================+======+======+======+===========+===========+===========+
| 1 | Donar Groningen            | 1.00 | 2.00 | 0.00 | 49.18     | 125.09    | 75.91     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Dukes Unlimited            | 1.00 | 2.00 | 0.00 | 34.12     | 121.42    | 87.30     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Landstede Basketbal        | 1.00 | 2.00 | 0.00 | 33.55     | 107.24    | 73.68     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BV Leeuwarden              | 0.50 | 1.00 | 1.00 | -21.75    | 79.48     | 101.23    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BV Noordkop                | 0.00 | 0.00 | 2.00 | -15.41    | 90.65     | 106.06    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Basketbal Academie Limburg | 0.00 | 0.00 | 1.00 | -53.62    | 76.81     | 130.43    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 7 | D.B.V. Rowic               | 0.00 | 0.00 | 1.00 | -18.42    | 84.21     | 102.63    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Rotterdam Basketbal        | 0.00 | 0.00 | 2.00 | -43.68    | 69.58     | 113.25    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+



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

    ##              Nrtg      EFGpct      ORpct      TOpct        FT4f
    ## Nrtg    1.0000000  0.76441922  0.8079967 -0.4776877  0.17586026
    ## EFGpct  0.7644192  1.00000000  0.5589553 -0.3080525 -0.05889931
    ## ORpct   0.8079967  0.55895528  1.0000000 -0.2481718  0.13857073
    ## TOpct  -0.4776877 -0.30805248 -0.2481718  1.0000000 -0.15517816
    ## FT4f    0.1758603 -0.05889931  0.1385707 -0.1551782  1.00000000



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
