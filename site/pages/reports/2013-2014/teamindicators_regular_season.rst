


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2013-2014 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name                  | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+===========================+======+=======+=======+===========+===========+===========+
| 1  | Landstede Basketbal       | 0.91 | 10.00 | 1.00  | 19.80     | 109.71    | 89.91     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | GasTerra Flames           | 0.83 | 10.00 | 2.00  | 19.01     | 102.47    | 83.46     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | BS Leiden                 | 0.67 | 8.00  | 4.00  | 5.65      | 103.03    | 97.38     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Dukes Unlimited           | 0.67 | 8.00  | 4.00  | 10.31     | 107.13    | 96.83     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Matrixx Magixx            | 0.67 | 8.00  | 4.00  | 13.77     | 110.81    | 97.05     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | Den Helder Kings Noordkop | 0.54 | 7.00  | 6.00  | 2.47      | 109.94    | 107.47    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal       | 0.42 | 5.00  | 7.00  | -7.61     | 98.70     | 106.31    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BV Aris                   | 0.23 | 3.00  | 10.00 | -14.44    | 96.00     | 110.43    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.09 | 1.00  | 10.00 | -21.32    | 82.38     | 103.70    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00  | 12.00 | -26.75    | 86.35     | 113.10    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+




Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.


.. figure:: figure/rating-quadrant.png
    :alt: 

    



.. figure:: figure/net-rating.png
    :alt: 

    



.. figure:: figure/off-rating.png
    :alt: 

    



.. figure:: figure/def-rating.png
    :alt: 

    


Pace
----


.. figure:: figure/pace-by-team.png
    :alt: 

    


Points
------


.. figure:: figure/point-differential-by-team.png
    :alt: 

    


Four Factors
------------

The net rating is plotted against all "four factors"
for all games in this competition.
These plots show us how each of the four factors influences the net rating.
Because we can assume the net rating to be the best indicator of actually winning games,
these plots show how and how strongly each of the four factors contribute to winning basketball games in the DBL in this season. 


.. figure:: figure/net-rating-by-four-factor.png
    :alt: 

    


The correlation matrix for the four factors and the net rating is displayed below:



::

    ##            Nrtg  EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.00000  0.5873  0.41152 -0.36547  0.08988
    ## EFGpct  0.58731  1.0000  0.06410 -0.11591  0.10577
    ## ORpct   0.41152  0.0641  1.00000  0.05337 -0.07137
    ## TOpct  -0.36547 -0.1159  0.05337  1.00000  0.11096
    ## FT4f    0.08988  0.1058 -0.07137  0.11096  1.00000




Offense
^^^^^^^

This shows the four factors for each of the teams.


.. figure:: figure/efg-by-team.png
    :alt: 

    



.. figure:: figure/or-pct-by-team.png
    :alt: 

    



.. figure:: figure/to-pct-team.png
    :alt: 

    



.. figure:: figure/ftt-pct-team.png
    :alt: 

    


Defense
^^^^^^^

This shows the four factors of the team's opponents for each of the teams.


.. figure:: figure/opp-efg-by-team.png
    :alt: 

    



.. figure:: figure/opp-or-pct-by-team.png
    :alt: 

    



.. figure:: figure/opp-to-pct-team.png
    :alt: 

    



.. figure:: figure/opp-ftt-pct-team.png
    :alt: 

    



Shot selection
--------------


.. figure:: figure/shot-selection-ftt-team.png
    :alt: 

    



.. figure:: figure/shot-selection-2s-team.png
    :alt: 

    



.. figure:: figure/shot-selection-3s-team.png
    :alt: 

    



.. figure:: figure/shot-selection-history-team.png
    :alt: 

    




.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
