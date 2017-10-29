

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
| 1 | BS Leiden                  | 1.00 | 3.00 | 0.00 | 24.59     | 120.00    | 95.41     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Landstede Basketbal        | 1.00 | 4.00 | 0.00 | 30.63     | 115.26    | 84.63     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 3 | BC APOLLO Amsterdam        | 0.75 | 3.00 | 1.00 | 4.11      | 105.15    | 101.04    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 4 | New Heroes                 | 0.75 | 3.00 | 1.00 | 26.40     | 110.77    | 84.37     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Donar                      | 0.67 | 2.00 | 1.00 | 27.78     | 119.90    | 92.13     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BV Leeuwarden              | 0.40 | 2.00 | 3.00 | -14.10    | 98.29     | 112.39    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Rotterdam Basketbal        | 0.25 | 1.00 | 3.00 | -17.64    | 100.26    | 117.89    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 8 | BV Noordkop                | 0.00 | 0.00 | 5.00 | -29.88    | 90.89     | 120.77    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 9 | Basketbal Academie Limburg | 0.00 | 0.00 | 4.00 | -27.80    | 93.05     | 120.85    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 1 rows containing missing values (geom_point).



::

    ## Warning: Removed 1 rows containing missing values (geom_text).


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
    ## Nrtg    1.0000000  0.65326949  0.4724694 -0.43515873 0.13589978
    ## EFGpct  0.6532695  1.00000000  0.1844811 -0.01397641 0.05876523
    ## ORpct   0.4724694  0.18448106  1.0000000 -0.10000078 0.19701843
    ## TOpct  -0.4351587 -0.01397641 -0.1000008  1.00000000 0.05127927
    ## FT4f    0.1358998  0.05876523  0.1970184  0.05127927 1.00000000



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
