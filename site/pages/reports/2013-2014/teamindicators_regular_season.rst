


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
| 1  | Landstede Basketbal       | 1.00 | 8.00 | 0.00 | 18.35     | 109.85    | 91.51     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 2  | GasTerra Flames           | 0.78 | 7.00 | 2.00 | 18.85     | 101.94    | 83.09     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 3  | Dukes Unlimited           | 0.75 | 6.00 | 2.00 | 14.83     | 108.87    | 94.04     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 4  | Matrixx Magixx            | 0.75 | 6.00 | 2.00 | 13.27     | 108.46    | 95.19     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 5  | BS Leiden                 | 0.57 | 4.00 | 3.00 | 1.50      | 101.92    | 100.43    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 6  | BV Aris                   | 0.38 | 3.00 | 5.00 | -7.14     | 100.53    | 107.66    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal       | 0.38 | 3.00 | 5.00 | -7.61     | 101.57    | 109.18    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 8  | Den Helder Kings Noordkop | 0.25 | 2.00 | 6.00 | -6.12     | 104.19    | 110.31    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.00 | 0.00 | 7.00 | -22.09    | 81.42     | 103.51    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00 | 7.00 | -32.88    | 83.35     | 116.23    |
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

    ##           Nrtg   EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.0000  0.55614  0.38945 -0.43832  0.05900
    ## EFGpct  0.5561  1.00000  0.02570 -0.18040  0.06307
    ## ORpct   0.3894  0.02570  1.00000  0.05988 -0.02409
    ## TOpct  -0.4383 -0.18040  0.05988  1.00000  0.04356
    ## FT4f    0.0590  0.06307 -0.02409  0.04356  1.00000




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
