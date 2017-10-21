

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
| 1 | BS Leiden                  | 1.00 | 2.00 | 0.00 | 23.13     | 117.50    | 94.37     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Landstede Basketbal        | 1.00 | 3.00 | 0.00 | 37.68     | 121.24    | 83.56     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 3 | New Heroes                 | 1.00 | 2.00 | 0.00 | 30.90     | 120.48    | 89.58     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BV Leeuwarden              | 0.67 | 2.00 | 1.00 | -0.79     | 112.40    | 113.18    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Donar                      | 0.67 | 2.00 | 1.00 | 27.78     | 119.90    | 92.13     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BC APOLLO Amsterdam        | 0.50 | 1.00 | 1.00 | -22.24    | 93.95     | 116.19    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Noordkop                | 0.00 | 0.00 | 3.00 | -32.06    | 87.08     | 119.14    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.00 | 0.00 | 3.00 | -25.33    | 98.72     | 124.05    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 9 | Rotterdam Basketbal        | 0.00 | 0.00 | 3.00 | -28.47    | 97.64     | 126.11    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 2 rows containing missing values (geom_point).



::

    ## Warning: Removed 2 rows containing missing values (geom_text).


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

    ##              Nrtg     EFGpct      ORpct       TOpct        FT4f
    ## Nrtg    1.0000000  0.6616656  0.5115222 -0.55364904  0.16927834
    ## EFGpct  0.6616656  1.0000000  0.1979874 -0.10154612  0.16130685
    ## ORpct   0.5115222  0.1979874  1.0000000 -0.15868579  0.21695157
    ## TOpct  -0.5536490 -0.1015461 -0.1586858  1.00000000 -0.02256817
    ## FT4f    0.1692783  0.1613068  0.2169516 -0.02256817  1.00000000



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