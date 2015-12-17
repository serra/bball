

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2015-2016 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+------------------------+------+------+-------+-----------+-----------+-----------+
|   | plg_Name               | pct  | W    | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+========================+======+======+=======+===========+===========+===========+
| 1 | Landstede Basketbal    | 0.82 | 9.00 | 2.00  | 15.43     | 101.77    | 86.34     |
+---+------------------------+------+------+-------+-----------+-----------+-----------+
| 2 | BS Leiden              | 0.80 | 8.00 | 2.00  | 16.15     | 100.13    | 83.98     |
+---+------------------------+------+------+-------+-----------+-----------+-----------+
| 3 | Dukes Unlimited        | 0.64 | 7.00 | 4.00  | 13.25     | 107.49    | 94.24     |
+---+------------------------+------+------+-------+-----------+-----------+-----------+
| 4 | GasTerra Flames        | 0.50 | 5.00 | 5.00  | 5.25      | 100.92    | 95.67     |
+---+------------------------+------+------+-------+-----------+-----------+-----------+
| 5 | BV Leeuwarden          | 0.40 | 4.00 | 6.00  | -15.22    | 89.02     | 104.24    |
+---+------------------------+------+------+-------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal    | 0.40 | 4.00 | 6.00  | -0.82     | 93.42     | 94.24     |
+---+------------------------+------+------+-------+-----------+-----------+-----------+
| 7 | BC APOLLO A'dam        | 0.33 | 3.00 | 6.00  | -3.63     | 94.45     | 98.08     |
+---+------------------------+------+------+-------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.09 | 1.00 | 10.00 | -30.58    | 78.74     | 109.32    |
+---+------------------------+------+------+-------+-----------+-----------+-----------+



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

    ##               Nrtg       EFGpct        ORpct       TOpct        FT4f
    ## Nrtg    1.00000000  0.628362766  0.377399265 -0.45757658  0.06418568
    ## EFGpct  0.62836277  1.000000000 -0.006814776 -0.10725421  0.04782965
    ## ORpct   0.37739926 -0.006814776  1.000000000 -0.02296798  0.11399515
    ## TOpct  -0.45757658 -0.107254210 -0.022967977  1.00000000 -0.10589831
    ## FT4f    0.06418568  0.047829654  0.113995145 -0.10589831  1.00000000



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
