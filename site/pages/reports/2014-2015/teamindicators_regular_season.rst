

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
| 6 | Rotterdam Basketbal       | 0.36 | 5.00  | 9.00  | -6.26     | 101.43    | 107.69    |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7 | BV Leeuwarden             | 0.29 | 4.00  | 10.00 | -9.80     | 100.66    | 110.46    |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert    | 0.14 | 2.00  | 12.00 | -24.30    | 84.99     | 109.29    |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9 | BC APOLLO A'dam           | 0.08 | 1.00  | 11.00 | -27.32    | 86.02     | 113.33    |
+---+---------------------------+------+-------+-------+-----------+-----------+-----------+



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
    ## Nrtg    1.0000000  0.61938462 0.38615488 -0.40511717 0.19118780
    ## EFGpct  0.6193846  1.00000000 0.09266339 -0.16666996 0.10375341
    ## ORpct   0.3861549  0.09266339 1.00000000  0.08273176 0.05695793
    ## TOpct  -0.4051172 -0.16666996 0.08273176  1.00000000 0.01728392
    ## FT4f    0.1911878  0.10375341 0.05695793  0.01728392 1.00000000



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
