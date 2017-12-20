

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


+---+----------------------------+------+-------+------+-----------+-----------+-----------+
|   | plg_Name                   | pct  | W     | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+============================+======+=======+======+===========+===========+===========+
| 1 | Donar                      | 0.91 | 10.00 | 1.00 | 32.08     | 117.48    | 85.40     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 2 | BS Leiden                  | 0.90 | 9.00  | 1.00 | 11.17     | 105.95    | 94.78     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 3 | New Heroes                 | 0.70 | 7.00  | 3.00 | 18.19     | 107.16    | 88.98     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 4 | Landstede Basketbal        | 0.64 | 7.00  | 4.00 | 13.87     | 111.50    | 97.64     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal        | 0.50 | 5.00  | 5.00 | -5.41     | 102.50    | 107.90    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 6 | BC APOLLO Amsterdam        | 0.30 | 3.00  | 7.00 | -12.59    | 94.99     | 107.58    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden              | 0.27 | 3.00  | 8.00 | -17.69    | 93.87     | 111.56    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.18 | 2.00  | 9.00 | -17.18    | 87.18     | 104.36    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 9 | BV Noordkop                | 0.10 | 1.00  | 9.00 | -23.54    | 93.74     | 117.28    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+



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
    ## Nrtg    1.0000000  0.66714516 0.51869418 -0.30904492 0.20613293
    ## EFGpct  0.6671452  1.00000000 0.28801210 -0.13831082 0.04182977
    ## ORpct   0.5186942  0.28801210 1.00000000  0.03236193 0.19431235
    ## TOpct  -0.3090449 -0.13831082 0.03236193  1.00000000 0.06638751
    ## FT4f    0.2061329  0.04182977 0.19431235  0.06638751 1.00000000



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
