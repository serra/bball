


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2014-2015 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+---------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name                  | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+===========================+======+======+======+===========+===========+===========+
| 1 | BS Leiden                 | 1.00 | 3.00 | 0.00 | 26.03     | 118.07    | 92.04     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Landstede Basketbal       | 1.00 | 3.00 | 0.00 | 6.96      | 104.98    | 98.02     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 3 | BV Leeuwarden             | 0.67 | 2.00 | 1.00 | -4.71     | 98.16     | 102.87    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Dukes Unlimited           | 0.67 | 2.00 | 1.00 | 26.50     | 112.08    | 85.58     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Den Helder Kings Noordkop | 0.33 | 1.00 | 2.00 | -10.03    | 95.74     | 105.77    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 6 | GasTerra Flames           | 0.33 | 1.00 | 2.00 | 5.04      | 96.28     | 91.24     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BC APOLLO A'dam           | 0.00 | 0.00 | 2.00 | -29.66    | 87.14     | 116.80    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert    | 0.00 | 0.00 | 2.00 | -17.32    | 79.58     | 96.90     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 9 | Rotterdam Basketbal       | 0.00 | 0.00 | 2.00 | -27.71    | 77.01     | 104.72    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+




Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 1 rows containing missing values (geom_point). Warning:
    ## Removed 1 rows containing missing values (geom_text).


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

    ##           Nrtg  EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.0000  0.5345  0.45678 -0.52375  0.22415
    ## EFGpct  0.5345  1.0000  0.16842 -0.13305  0.24056
    ## ORpct   0.4568  0.1684  1.00000 -0.07746  0.09576
    ## TOpct  -0.5238 -0.1330 -0.07746  1.00000 -0.05622
    ## FT4f    0.2242  0.2406  0.09576 -0.05622  1.00000




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
