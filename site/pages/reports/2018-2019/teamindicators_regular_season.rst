

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


+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name                   | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+============================+======+=======+=======+===========+===========+===========+
| 1  | Landstede Basketbal        | 1.00 | 12.00 | 0.00  | 28.60     | 116.46    | 87.86     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | BS Leiden                  | 0.89 | 8.00  | 1.00  | 22.43     | 115.75    | 93.31     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Dukes Unlimited            | 0.80 | 8.00  | 2.00  | 24.83     | 116.66    | 91.83     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Donar Groningen            | 0.75 | 9.00  | 3.00  | 28.39     | 123.43    | 95.04     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.55 | 6.00  | 5.00  | -0.54     | 94.97     | 95.51     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.33 | 4.00  | 8.00  | -18.38    | 93.23     | 111.61    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal        | 0.33 | 4.00  | 8.00  | -12.32    | 91.59     | 103.91    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BV Noordkop                | 0.23 | 3.00  | 10.00 | -16.01    | 95.13     | 111.13    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | Basketbal Academie Limburg | 0.17 | 2.00  | 10.00 | -23.36    | 95.23     | 118.59    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | BC APOLLO Amsterdam        | 0.15 | 2.00  | 11.00 | -20.88    | 94.15     | 115.04    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 1 rows containing missing values (geom_point).



::

    ## Warning: Removed 1 rows containing missing values (geom_text).


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

    ##              Nrtg      EFGpct        ORpct       TOpct         FT4f
    ## Nrtg    1.0000000  0.64572013  0.349949963 -0.57949273  0.125529429
    ## EFGpct  0.6457201  1.00000000  0.160269041 -0.23930403  0.049133537
    ## ORpct   0.3499500  0.16026904  1.000000000  0.07085075 -0.000725884
    ## TOpct  -0.5794927 -0.23930403  0.070850755  1.00000000 -0.165317205
    ## FT4f    0.1255294  0.04913354 -0.000725884 -0.16531721  1.000000000



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
