


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


+---+---------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name                  | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+===========================+======+======+======+===========+===========+===========+
| 1 | BS Leiden                 | 1.00 | 4.00 | 0.00 | 28.82     | 119.00    | 90.19     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Landstede Basketbal       | 1.00 | 3.00 | 0.00 | 6.96      | 104.98    | 98.02     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Dukes Unlimited           | 0.75 | 3.00 | 1.00 | 26.12     | 112.00    | 85.88     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BV Leeuwarden             | 0.50 | 2.00 | 2.00 | -3.82     | 99.47     | 103.29    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Den Helder Kings Noordkop | 0.50 | 2.00 | 2.00 | -2.74     | 99.38     | 102.12    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal       | 0.33 | 1.00 | 2.00 | -18.09    | 86.19     | 104.29    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 7 | GasTerra Flames           | 0.25 | 1.00 | 3.00 | -2.47     | 93.90     | 96.37     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 8 | BC APOLLO A'dam           | 0.00 | 0.00 | 3.00 | -32.17    | 86.30     | 118.47    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 9 | Basketball Stars Weert    | 0.00 | 0.00 | 3.00 | -17.92    | 83.45     | 101.36    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+




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

    ##           Nrtg  EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.0000 0.52858  0.56796 -0.39259  0.24583
    ## EFGpct  0.5286 1.00000  0.21895  0.06468  0.22642
    ## ORpct   0.5680 0.21895  1.00000 -0.02349  0.11836
    ## TOpct  -0.3926 0.06468 -0.02349  1.00000 -0.08993
    ## FT4f    0.2458 0.22642  0.11836 -0.08993  1.00000




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
