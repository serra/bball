

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2017-2018 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+----------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name                   | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+============================+======+======+======+===========+===========+===========+
| 1 | BS Leiden                  | 1.00 | 3.00 | 0.00 | 24.59     | 120.00    | 95.41     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Landstede Basketbal        | 1.00 | 4.00 | 0.00 | 30.63     | 115.26    | 84.63     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 3 | BC APOLLO Amsterdam        | 0.67 | 2.00 | 1.00 | -3.09     | 99.72     | 102.81    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BV Leeuwarden              | 0.67 | 2.00 | 1.00 | -0.79     | 112.40    | 113.18    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Donar                      | 0.67 | 2.00 | 1.00 | 27.78     | 119.90    | 92.13     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 6 | New Heroes                 | 0.67 | 2.00 | 1.00 | 17.45     | 109.60    | 92.15     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Noordkop                | 0.00 | 0.00 | 4.00 | -30.92    | 89.68     | 120.61    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.00 | 0.00 | 4.00 | -27.80    | 93.05     | 120.85    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 9 | Rotterdam Basketbal        | 0.00 | 0.00 | 3.00 | -28.47    | 97.64     | 126.11    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 2 rows containing missing values (geom_point).



::

    ## Warning: Removed 2 rows containing missing values (geom_text).


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
    ## Nrtg    1.0000000  0.62745508  0.4342414 -0.51191125 0.13517750
    ## EFGpct  0.6274551  1.00000000  0.1266097 -0.04149096 0.04895041
    ## ORpct   0.4342414  0.12660973  1.0000000 -0.13161361 0.19100365
    ## TOpct  -0.5119113 -0.04149096 -0.1316136  1.00000000 0.06097157
    ## FT4f    0.1351775  0.04895041  0.1910036  0.06097157 1.00000000



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
