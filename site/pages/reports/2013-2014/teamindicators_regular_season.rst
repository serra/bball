


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


+----+---------------------------+------+------+-------+-----------+-----------+-----------+
|    | plg_Name                  | pct  | W    | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+===========================+======+======+=======+===========+===========+===========+
| 1  | Landstede Basketbal       | 0.90 | 9.00 | 1.00  | 15.32     | 108.78    | 93.46     |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 2  | GasTerra Flames           | 0.82 | 9.00 | 2.00  | 19.93     | 103.09    | 83.16     |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 3  | Matrixx Magixx            | 0.73 | 8.00 | 3.00  | 17.13     | 112.30    | 95.16     |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 4  | BS Leiden                 | 0.64 | 7.00 | 4.00  | 5.19      | 103.17    | 97.98     |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 5  | Dukes Unlimited           | 0.64 | 7.00 | 4.00  | 9.13      | 106.16    | 97.04     |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 6  | Den Helder Kings Noordkop | 0.50 | 6.00 | 6.00  | 1.54      | 110.09    | 108.54    |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal       | 0.45 | 5.00 | 6.00  | -7.50     | 99.79     | 107.29    |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 8  | BV Aris                   | 0.25 | 3.00 | 9.00  | -14.51    | 96.11     | 110.63    |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.10 | 1.00 | 9.00  | -17.00    | 85.17     | 102.17    |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00 | 11.00 | -28.20    | 85.95     | 114.15    |
+----+---------------------------+------+------+-------+-----------+-----------+-----------+




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

    ##            Nrtg   EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.00000  0.57322  0.38370 -0.36968  0.06769
    ## EFGpct  0.57322  1.00000  0.01805 -0.15707  0.11005
    ## ORpct   0.38370  0.01805  1.00000  0.04491 -0.10259
    ## TOpct  -0.36968 -0.15707  0.04491  1.00000  0.11616
    ## FT4f    0.06769  0.11005 -0.10259  0.11616  1.00000




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
