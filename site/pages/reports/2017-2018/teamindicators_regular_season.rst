

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


+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
|   | plg_Name                   | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+============================+======+=======+=======+===========+===========+===========+
| 1 | Donar                      | 0.93 | 13.00 | 1.00  | 34.20     | 118.05    | 83.85     |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 2 | BS Leiden                  | 0.85 | 11.00 | 2.00  | 14.02     | 104.85    | 90.83     |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 3 | New Heroes                 | 0.77 | 10.00 | 3.00  | 22.63     | 110.68    | 88.04     |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 4 | Landstede Basketbal        | 0.64 | 9.00  | 5.00  | 9.93      | 109.03    | 99.09     |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal        | 0.46 | 6.00  | 7.00  | -7.76     | 99.85     | 107.61    |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 6 | BV Leeuwarden              | 0.27 | 4.00  | 11.00 | -20.10    | 92.58     | 112.68    |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 7 | BC APOLLO Amsterdam        | 0.23 | 3.00  | 10.00 | -12.03    | 97.23     | 109.25    |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.23 | 3.00  | 10.00 | -16.76    | 88.28     | 105.03    |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 9 | BV Noordkop                | 0.14 | 2.00  | 12.00 | -22.70    | 95.21     | 117.91    |
+---+----------------------------+------+-------+-------+-----------+-----------+-----------+



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

    ##              Nrtg      EFGpct       ORpct       TOpct        FT4f
    ## Nrtg    1.0000000  0.64405049  0.56649349 -0.34730793  0.25512749
    ## EFGpct  0.6440505  1.00000000  0.30667436 -0.12441363  0.08645738
    ## ORpct   0.5664935  0.30667436  1.00000000 -0.01402838  0.24831322
    ## TOpct  -0.3473079 -0.12441363 -0.01402838  1.00000000 -0.02828317
    ## FT4f    0.2551275  0.08645738  0.24831322 -0.02828317  1.00000000



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
