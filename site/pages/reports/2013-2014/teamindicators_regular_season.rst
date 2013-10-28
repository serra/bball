


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
| 1  | Landstede Basketbal       | 1.00 | 4.00 | 0.00 | 21.16     | 110.56    | 89.40     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 2  | Dukes Unlimited           | 0.83 | 5.00 | 1.00 | 17.15     | 108.77    | 91.62     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 3  | GasTerra Flames           | 0.67 | 4.00 | 2.00 | 14.66     | 99.15     | 84.49     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 4  | BV Aris                   | 0.60 | 3.00 | 2.00 | 2.39      | 109.95    | 107.56    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 5  | Matrixx Magixx            | 0.60 | 3.00 | 2.00 | 5.24      | 101.70    | 96.45     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 6  | BS Leiden                 | 0.50 | 3.00 | 3.00 | 0.82      | 102.25    | 101.43    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 7  | Den Helder Kings Noordkop | 0.40 | 2.00 | 3.00 | -4.94     | 105.61    | 110.55    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal       | 0.25 | 1.00 | 3.00 | -13.12    | 105.43    | 118.55    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.00 | 0.00 | 5.00 | -25.25    | 80.57     | 105.82    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00 | 4.00 | -28.78    | 82.68     | 111.46    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+




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

    ##            Nrtg   EFGpct     ORpct     TOpct     FT4f
    ## Nrtg    1.00000  0.52088  0.389365 -0.436854 -0.04487
    ## EFGpct  0.52088  1.00000 -0.040847 -0.199682  0.12547
    ## ORpct   0.38936 -0.04085  1.000000 -0.006715 -0.13065
    ## TOpct  -0.43685 -0.19968 -0.006715  1.000000  0.04716
    ## FT4f   -0.04487  0.12547 -0.130652  0.047155  1.00000




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
