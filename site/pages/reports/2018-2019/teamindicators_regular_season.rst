

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2018-2019 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name                   | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+============================+======+=======+=======+===========+===========+===========+
| 1  | BS Leiden                  | 0.89 | 17.00 | 2.00  | 19.51     | 115.85    | 96.35     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | Landstede Basketbal        | 0.82 | 18.00 | 4.00  | 23.29     | 111.40    | 88.10     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Dukes Unlimited            | 0.81 | 17.00 | 4.00  | 23.15     | 114.10    | 90.96     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Donar Groningen            | 0.70 | 14.00 | 6.00  | 17.99     | 116.78    | 98.80     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.50 | 10.00 | 10.00 | -1.85     | 98.77     | 100.61    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.36 | 8.00  | 14.00 | -11.87    | 96.56     | 108.43    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | BV Noordkop                | 0.36 | 8.00  | 14.00 | -12.57    | 96.34     | 108.91    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BC APOLLO Amsterdam        | 0.24 | 5.00  | 16.00 | -15.05    | 96.88     | 111.92    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | Rotterdam Basketbal        | 0.24 | 5.00  | 16.00 | -12.22    | 93.06     | 105.29    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketbal Academie Limburg | 0.14 | 3.00  | 19.00 | -26.44    | 88.66     | 115.10    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+



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

    ##              Nrtg       EFGpct      ORpct       TOpct         FT4f
    ## Nrtg    1.0000000  0.602178652 0.32690366 -0.49071845  0.206627660
    ## EFGpct  0.6021787  1.000000000 0.07948267 -0.20717287 -0.007120199
    ## ORpct   0.3269037  0.079482666 1.00000000  0.05385489  0.060117493
    ## TOpct  -0.4907185 -0.207172866 0.05385489  1.00000000 -0.068433796
    ## FT4f    0.2066277 -0.007120199 0.06011749 -0.06843380  1.000000000



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
