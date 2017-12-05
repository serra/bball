

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
| 1 | BS Leiden                  | 1.00 | 8.00 | 0.00 | 17.21     | 108.76    | 91.55     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Donar                      | 0.89 | 8.00 | 1.00 | 30.98     | 117.54    | 86.56     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Landstede Basketbal        | 0.67 | 6.00 | 3.00 | 13.96     | 109.75    | 95.79     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 4 | New Heroes                 | 0.62 | 5.00 | 3.00 | 12.71     | 106.34    | 93.63     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal        | 0.44 | 4.00 | 5.00 | -7.86     | 101.92    | 109.78    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BC APOLLO Amsterdam        | 0.38 | 3.00 | 5.00 | -8.12     | 98.97     | 107.09    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden              | 0.33 | 3.00 | 6.00 | -17.75    | 94.12     | 111.87    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.12 | 1.00 | 7.00 | -18.22    | 89.42     | 107.64    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 9 | BV Noordkop                | 0.00 | 0.00 | 8.00 | -25.34    | 93.00     | 118.34    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+



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

    ##              Nrtg      EFGpct       ORpct       TOpct       FT4f
    ## Nrtg    1.0000000  0.64649232  0.55033954 -0.32718376 0.14648277
    ## EFGpct  0.6464923  1.00000000  0.30664809 -0.07959762 0.07062873
    ## ORpct   0.5503395  0.30664809  1.00000000 -0.06312258 0.22379572
    ## TOpct  -0.3271838 -0.07959762 -0.06312258  1.00000000 0.01204115
    ## FT4f    0.1464828  0.07062873  0.22379572  0.01204115 1.00000000



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
