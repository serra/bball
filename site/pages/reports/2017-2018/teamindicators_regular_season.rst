

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
| 2 | BS Leiden                  | 0.89 | 8.00  | 1.00 | 11.99     | 107.04    | 95.04     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 3 | New Heroes                 | 0.67 | 6.00  | 3.00 | 16.08     | 106.06    | 89.98     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 4 | Landstede Basketbal        | 0.60 | 6.00  | 4.00 | 12.12     | 109.67    | 97.55     |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal        | 0.50 | 5.00  | 5.00 | -5.41     | 102.50    | 107.90    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 6 | BC APOLLO Amsterdam        | 0.30 | 3.00  | 7.00 | -12.59    | 94.99     | 107.58    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden              | 0.30 | 3.00  | 7.00 | -16.33    | 93.40     | 109.73    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.20 | 2.00  | 8.00 | -18.52    | 86.66     | 105.18    |
+---+----------------------------+------+-------+------+-----------+-----------+-----------+
| 9 | BV Noordkop                | 0.11 | 1.00  | 8.00 | -22.03    | 95.27     | 117.30    |
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

    ##              Nrtg     EFGpct      ORpct       TOpct       FT4f
    ## Nrtg    1.0000000  0.6643546 0.49526861 -0.32015720 0.20333927
    ## EFGpct  0.6643546  1.0000000 0.26309548 -0.14431614 0.04524790
    ## ORpct   0.4952686  0.2630955 1.00000000  0.02805926 0.19942503
    ## TOpct  -0.3201572 -0.1443161 0.02805926  1.00000000 0.02357378
    ## FT4f    0.2033393  0.0452479 0.19942503  0.02357378 1.00000000



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
