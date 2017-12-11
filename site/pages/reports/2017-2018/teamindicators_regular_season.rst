

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
| 1 | Donar                      | 0.90 | 9.00 | 1.00 | 30.86     | 118.08    | 87.23     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 2 | BS Leiden                  | 0.89 | 8.00 | 1.00 | 11.99     | 107.04    | 95.04     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 3 | New Heroes                 | 0.62 | 5.00 | 3.00 | 12.71     | 106.34    | 93.63     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Landstede Basketbal        | 0.60 | 6.00 | 4.00 | 12.12     | 109.67    | 97.55     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal        | 0.50 | 5.00 | 5.00 | -5.41     | 102.50    | 107.90    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BC APOLLO Amsterdam        | 0.33 | 3.00 | 6.00 | -9.07     | 98.09     | 107.16    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden              | 0.30 | 3.00 | 7.00 | -16.33    | 93.40     | 109.73    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.22 | 2.00 | 7.00 | -15.80    | 89.53     | 105.33    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 9 | BV Noordkop                | 0.11 | 1.00 | 8.00 | -22.03    | 95.27     | 117.30    |
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

    ##              Nrtg      EFGpct      ORpct       TOpct       FT4f
    ## Nrtg    1.0000000  0.63991388 0.54337967 -0.29619953 0.17539436
    ## EFGpct  0.6399139  1.00000000 0.31840164 -0.07082567 0.04331031
    ## ORpct   0.5433797  0.31840164 1.00000000  0.02083706 0.20622120
    ## TOpct  -0.2961995 -0.07082567 0.02083706  1.00000000 0.01217820
    ## FT4f    0.1753944  0.04331031 0.20622120  0.01217820 1.00000000



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
