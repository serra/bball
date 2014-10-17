


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
| 3 | Dukes Unlimited           | 0.67 | 2.00 | 1.00 | 26.50     | 112.08    | 85.58     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BV Leeuwarden             | 0.50 | 1.00 | 1.00 | -11.01    | 93.30     | 104.31    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 5 | GasTerra Flames           | 0.50 | 1.00 | 1.00 | 10.38     | 100.06    | 89.68     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BC APOLLO A'dam           | 0.00 | 0.00 | 1.00 | -51.43    | 74.29     | 125.71    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Basketball Stars Weert    | 0.00 | 0.00 | 2.00 | -17.32    | 79.58     | 96.90     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Den Helder Kings Noordkop | 0.00 | 0.00 | 2.00 | -17.86    | 96.43     | 114.29    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 9 | Rotterdam Basketbal       | 0.00 | 0.00 | 2.00 | -27.71    | 77.01     | 104.72    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+




Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 2 rows containing missing values (geom_point). Warning:
    ## Removed 2 rows containing missing values (geom_text).


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
    ## Nrtg    1.0000  0.5672  0.49536 -0.59575  0.23127
    ## EFGpct  0.5672  1.0000  0.18172 -0.35570  0.23511
    ## ORpct   0.4954  0.1817  1.00000 -0.08036 -0.01089
    ## TOpct  -0.5958 -0.3557 -0.08036  1.00000 -0.02418
    ## FT4f    0.2313  0.2351 -0.01089 -0.02418  1.00000




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
