


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
| 2  | Dukes Unlimited           | 0.80 | 4.00 | 1.00 | 15.99     | 106.21    | 90.21     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 3  | BV Aris                   | 0.75 | 3.00 | 1.00 | 8.72      | 112.77    | 104.05    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 4  | GasTerra Flames           | 0.60 | 3.00 | 2.00 | 7.17      | 96.16     | 88.99     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 5  | Den Helder Kings Noordkop | 0.50 | 2.00 | 2.00 | -3.36     | 109.12    | 112.48    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 6  | Matrixx Magixx            | 0.50 | 2.00 | 2.00 | 3.74      | 101.42    | 97.68     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 7  | BS Leiden                 | 0.40 | 2.00 | 3.00 | -1.52     | 99.36     | 100.88    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal       | 0.33 | 1.00 | 2.00 | -13.33    | 105.85    | 119.18    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.00 | 0.00 | 5.00 | -25.25    | 80.57     | 105.82    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00 | 3.00 | -21.00    | 89.59     | 110.59    |
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

    ##            Nrtg    EFGpct    ORpct    TOpct      FT4f
    ## Nrtg    1.00000  0.493470  0.33660 -0.41087 -0.025721
    ## EFGpct  0.49347  1.000000 -0.04517 -0.21278 -0.005726
    ## ORpct   0.33660 -0.045171  1.00000  0.05788 -0.010003
    ## TOpct  -0.41087 -0.212781  0.05788  1.00000  0.102210
    ## FT4f   -0.02572 -0.005726 -0.01000  0.10221  1.000000




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
