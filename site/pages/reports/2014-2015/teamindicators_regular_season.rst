


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
| 1 | BS Leiden                 | 1.00 | 1.00 | 0.00 | 37.21     | 131.40    | 94.19     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Dukes Unlimited           | 1.00 | 1.00 | 0.00 | 51.43     | 125.71    | 74.29     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 3 | GasTerra Flames           | 1.00 | 1.00 | 0.00 | 26.09     | 101.45    | 75.36     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Landstede Basketbal       | 1.00 | 1.00 | 0.00 | 14.29     | 107.14    | 92.86     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BC APOLLO A'dam           | 0.00 | 0.00 | 1.00 | -51.43    | 74.29     | 125.71    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BV Leeuwarden             | 0.00 | 0.00 | 1.00 | -37.21    | 94.19     | 131.40    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Den Helder Kings Noordkop | 0.00 | 0.00 | 1.00 | -14.29    | 92.86     | 107.14    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Rotterdam Basketbal       | 0.00 | 0.00 | 1.00 | -26.09    | 75.36     | 101.45    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+




Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 6 rows containing missing values (geom_point). Warning:
    ## Removed 6 rows containing missing values (geom_text).


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

    ##           Nrtg  EFGpct   ORpct   TOpct    FT4f
    ## Nrtg    1.0000  0.6342  0.5719 -0.7440  0.3146
    ## EFGpct  0.6342  1.0000  0.3177 -0.4927  0.4274
    ## ORpct   0.5719  0.3177  1.0000 -0.3821 -0.3807
    ## TOpct  -0.7440 -0.4927 -0.3821  1.0000 -0.4989
    ## FT4f    0.3146  0.4274 -0.3807 -0.4989  1.0000




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
