


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
| 1 | BS Leiden                 | 1.00 | 6.00 | 0.00 | 27.16     | 115.35    | 88.19     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Dukes Unlimited           | 0.80 | 4.00 | 1.00 | 25.90     | 111.37    | 85.47     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Landstede Basketbal       | 0.80 | 4.00 | 1.00 | 0.89      | 100.67    | 99.78     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Den Helder Kings Noordkop | 0.50 | 3.00 | 3.00 | -2.20     | 97.95     | 100.14    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 5 | GasTerra Flames           | 0.40 | 2.00 | 3.00 | 6.34      | 97.46     | 91.12     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal       | 0.40 | 2.00 | 3.00 | -13.58    | 91.81     | 105.39    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden             | 0.33 | 2.00 | 4.00 | -11.97    | 94.05     | 106.02    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert    | 0.20 | 1.00 | 4.00 | -10.48    | 88.45     | 98.93     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 9 | BC APOLLO A'dam           | 0.00 | 0.00 | 5.00 | -24.66    | 84.76     | 109.41    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+




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

    ##           Nrtg   EFGpct   ORpct    TOpct      FT4f
    ## Nrtg    1.0000 0.500667 0.56406 -0.27550  0.235022
    ## EFGpct  0.5007 1.000000 0.02357  0.01605  0.003887
    ## ORpct   0.5641 0.023573 1.00000  0.02829  0.232458
    ## TOpct  -0.2755 0.016051 0.02829  1.00000 -0.041305
    ## FT4f    0.2350 0.003887 0.23246 -0.04131  1.000000




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
