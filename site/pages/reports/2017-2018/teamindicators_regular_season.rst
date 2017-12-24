

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
| 3 | New Heroes                 | 0.73 | 8.00  | 3.00 | 19.27     | 108.26    | 88.98     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 4 | Landstede Basketbal        | 0.58 | 7.00  | 5.00 | 10.20     | 109.63    | 99.43     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal        | 0.50 | 5.00  | 5.00 | -5.41     | 102.50    | 107.90    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 6 | BC APOLLO Amsterdam        | 0.27 | 3.00  | 8.00 | -11.85    | 95.29     | 107.14    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden              | 0.27 | 3.00  | 8.00 | -17.69    | 93.87     | 111.56    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.25 | 3.00  | 9.00 | -15.38    | 88.47     | 103.85    |
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
    ## Nrtg    1.0000000  0.67150374 0.52478667 -0.27657504 0.22185710
    ## EFGpct  0.6715037  1.00000000 0.28919106 -0.12042970 0.05741576
    ## ORpct   0.5247867  0.28919106 1.00000000  0.06129944 0.21557337
    ## TOpct  -0.2765750 -0.12042970 0.06129944  1.00000000 0.08644437
    ## FT4f    0.2218571  0.05741576 0.21557337  0.08644437 1.00000000



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
