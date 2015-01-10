


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2014-2015 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
|   | plg_Name                  | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+===========================+======+=======+=======+===========+===========+===========+
| 1 | Dukes Unlimited           | 0.83 | 10.00 | 2.00  | 24.60     | 112.42    | 87.82     |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 2 | BS Leiden                 | 0.75 | 12.00 | 4.00  | 15.10     | 112.11    | 97.01     |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 3 | Den Helder Kings Noordkop | 0.73 | 8.00  | 3.00  | 9.36      | 107.10    | 97.74     |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 4 | Landstede Basketbal       | 0.69 | 9.00  | 4.00  | 5.40      | 105.33    | 99.93     |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 5 | GasTerra Flames           | 0.64 | 9.00  | 5.00  | 13.07     | 105.91    | 92.84     |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal       | 0.40 | 6.00  | 9.00  | -3.87     | 102.08    | 105.95    |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7 | BV Leeuwarden             | 0.29 | 4.00  | 10.00 | -9.80     | 100.66    | 110.46    |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert    | 0.14 | 2.00  | 12.00 | -24.30    | 84.99     | 109.29    |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9 | BC APOLLO A'dam           | 0.08 | 1.00  | 12.00 | -27.50    | 85.67     | 113.16    |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+




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

    ##           Nrtg   EFGpct   ORpct     TOpct     FT4f
    ## Nrtg    1.0000  0.61710 0.38648 -0.392462 0.210438
    ## EFGpct  0.6171  1.00000 0.09572 -0.137797 0.101361
    ## ORpct   0.3865  0.09572 1.00000  0.084277 0.060081
    ## TOpct  -0.3925 -0.13780 0.08428  1.000000 0.005945
    ## FT4f    0.2104  0.10136 0.06008  0.005945 1.000000




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
