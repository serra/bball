


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2013-2014 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+---------------------------+------+------+------+-----------+-----------+-----------+
|    | plg_Name                  | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+===========================+======+======+======+===========+===========+===========+
| 1  | Landstede Basketbal       | 1.00 | 6.00 | 0.00 | 22.12     | 109.38    | 87.26     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 2  | Dukes Unlimited           | 0.86 | 6.00 | 1.00 | 19.39     | 111.36    | 91.96     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 3  | GasTerra Flames           | 0.75 | 6.00 | 2.00 | 19.39     | 101.27    | 81.88     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 4  | Matrixx Magixx            | 0.67 | 4.00 | 2.00 | 11.99     | 108.32    | 96.33     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 5  | BS Leiden                 | 0.57 | 4.00 | 3.00 | 1.50      | 101.92    | 100.43    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 6  | BV Aris                   | 0.43 | 3.00 | 4.00 | -5.71     | 101.73    | 107.44    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 7  | Den Helder Kings Noordkop | 0.33 | 2.00 | 4.00 | -5.04     | 103.75    | 108.79    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal       | 0.33 | 2.00 | 4.00 | -13.43    | 102.09    | 115.52    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.00 | 0.00 | 7.00 | -22.09    | 81.42     | 103.51    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00 | 6.00 | -33.43    | 83.86     | 117.29    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+




Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.


.. figure:: figure/rating-quadrant.png
    :alt: 

    



.. figure:: figure/net-rating.png
    :alt: 

    



.. figure:: figure/off-rating.png
    :alt: 

    



.. figure:: figure/def-rating.png
    :alt: 

    


Pace
----


.. figure:: figure/pace-by-team.png
    :alt: 

    


Points
------


.. figure:: figure/point-differential-by-team.png
    :alt: 

    


Four Factors
------------

The net rating is plotted against all "four factors"
for all games in this competition.
These plots show us how each of the four factors influences the net rating.
Because we can assume the net rating to be the best indicator of actually winning games,
these plots show how and how strongly each of the four factors contribute to winning basketball games in the DBL in this season. 


.. figure:: figure/net-rating-by-four-factor.png
    :alt: 

    


The correlation matrix for the four factors and the net rating is displayed below:



::

    ##           Nrtg    EFGpct     ORpct    TOpct     FT4f
    ## Nrtg    1.0000  0.570013  0.397943 -0.44178  0.03510
    ## EFGpct  0.5700  1.000000 -0.005547 -0.21205  0.08116
    ## ORpct   0.3979 -0.005547  1.000000  0.02094 -0.04643
    ## TOpct  -0.4418 -0.212046  0.020939  1.00000  0.05447
    ## FT4f    0.0351  0.081161 -0.046430  0.05447  1.00000




Offense
^^^^^^^

This shows the four factors for each of the teams.


.. figure:: figure/efg-by-team.png
    :alt: 

    



.. figure:: figure/or-pct-by-team.png
    :alt: 

    



.. figure:: figure/to-pct-team.png
    :alt: 

    



.. figure:: figure/ftt-pct-team.png
    :alt: 

    


Defense
^^^^^^^

This shows the four factors of the team's opponents for each of the teams.


.. figure:: figure/opp-efg-by-team.png
    :alt: 

    



.. figure:: figure/opp-or-pct-by-team.png
    :alt: 

    



.. figure:: figure/opp-to-pct-team.png
    :alt: 

    



.. figure:: figure/opp-ftt-pct-team.png
    :alt: 

    



Shot selection
--------------


.. figure:: figure/shot-selection-ftt-team.png
    :alt: 

    



.. figure:: figure/shot-selection-2s-team.png
    :alt: 

    



.. figure:: figure/shot-selection-3s-team.png
    :alt: 

    



.. figure:: figure/shot-selection-history-team.png
    :alt: 

    




.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
