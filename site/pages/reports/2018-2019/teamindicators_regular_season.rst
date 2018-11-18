

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
| 2  | Donar Groningen            | 0.86 | 6.00 | 1.00 | 30.17     | 121.39    | 91.22     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 3  | BS Leiden                  | 0.83 | 5.00 | 1.00 | 17.90     | 112.38    | 94.48     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 4  | Dukes Unlimited            | 0.71 | 5.00 | 2.00 | 26.55     | 118.10    | 91.55     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.71 | 5.00 | 2.00 | 7.40      | 99.53     | 92.13     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.43 | 3.00 | 4.00 | -19.65    | 90.07     | 109.73    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 7  | BV Noordkop                | 0.33 | 3.00 | 6.00 | -10.26    | 95.71     | 105.98    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal        | 0.25 | 2.00 | 6.00 | -17.66    | 89.11     | 106.76    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO Amsterdam        | 0.00 | 0.00 | 7.00 | -29.58    | 87.44     | 117.01    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketbal Academie Limburg | 0.00 | 0.00 | 6.00 | -25.34    | 93.13     | 118.47    |
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

    ##               Nrtg       EFGpct      ORpct       TOpct         FT4f
    ## Nrtg    1.00000000  0.656944015 0.40964978 -0.50022892  0.033410052
    ## EFGpct  0.65694402  1.000000000 0.29089733 -0.13991054  0.007122152
    ## ORpct   0.40964978  0.290897329 1.00000000  0.19856037  0.033982168
    ## TOpct  -0.50022892 -0.139910540 0.19856037  1.00000000 -0.073938465
    ## FT4f    0.03341005  0.007122152 0.03398217 -0.07393846  1.000000000



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
