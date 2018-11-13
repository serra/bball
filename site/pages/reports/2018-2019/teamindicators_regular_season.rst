

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


+----+----------------------------+------+------+------+-----------+-----------+-----------+
|    | plg_Name                   | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+============================+======+======+======+===========+===========+===========+
| 1  | Landstede Basketbal        | 1.00 | 6.00 | 0.00 | 29.00     | 116.24    | 87.24     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 2  | Donar Groningen            | 0.83 | 5.00 | 1.00 | 27.49     | 120.23    | 92.74     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 3  | Dutch Windmills            | 0.83 | 5.00 | 1.00 | 15.91     | 105.31    | 89.41     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 4  | BS Leiden                  | 0.80 | 4.00 | 1.00 | 13.06     | 110.38    | 97.32     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 5  | Dukes Unlimited            | 0.67 | 4.00 | 2.00 | 23.70     | 119.70    | 96.01     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.43 | 3.00 | 4.00 | -19.65    | 90.07     | 109.73    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 7  | BV Noordkop                | 0.25 | 2.00 | 6.00 | -13.29    | 91.54     | 104.83    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal        | 0.25 | 2.00 | 6.00 | -17.66    | 89.11     | 106.76    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO Amsterdam        | 0.00 | 0.00 | 5.00 | -23.73    | 89.94     | 113.68    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketbal Academie Limburg | 0.00 | 0.00 | 5.00 | -27.62    | 88.72     | 116.34    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+



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

    ##               Nrtg       EFGpct     ORpct        TOpct         FT4f
    ## Nrtg    1.00000000  0.688585528 0.4100243 -0.495932030  0.020119814
    ## EFGpct  0.68858553  1.000000000 0.2994519 -0.185951197 -0.004763771
    ## ORpct   0.41002429  0.299451888 1.0000000  0.217684551  0.141320898
    ## TOpct  -0.49593203 -0.185951197 0.2176846  1.000000000  0.003840348
    ## FT4f    0.02011981 -0.004763771 0.1413209  0.003840348  1.000000000



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
