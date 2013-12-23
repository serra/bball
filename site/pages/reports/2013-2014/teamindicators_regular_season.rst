


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


+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name                  | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+===========================+======+=======+=======+===========+===========+===========+
| 1  | GasTerra Flames           | 0.81 | 13.00 | 3.00  | 18.85     | 105.08    | 86.24     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | Landstede Basketbal       | 0.79 | 11.00 | 3.00  | 13.79     | 107.21    | 93.42     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Dukes Unlimited           | 0.71 | 10.00 | 4.00  | 10.48     | 107.25    | 96.78     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | BS Leiden                 | 0.67 | 10.00 | 5.00  | 8.78      | 105.09    | 96.31     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Matrixx Magixx            | 0.67 | 10.00 | 5.00  | 16.80     | 112.96    | 96.16     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | Den Helder Kings Noordkop | 0.60 | 9.00  | 6.00  | 5.18      | 110.97    | 105.78    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal       | 0.40 | 6.00  | 9.00  | -8.31     | 99.85     | 108.16    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BV Aris                   | 0.29 | 5.00  | 12.00 | -10.99    | 97.03     | 108.03    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.13 | 2.00  | 13.00 | -22.84    | 82.75     | 105.59    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00  | 16.00 | -28.04    | 86.21     | 114.24    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+




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

    ##            Nrtg   EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.00000  0.59073  0.49774 -0.33419  0.03807
    ## EFGpct  0.59073  1.00000  0.17588 -0.02831  0.03773
    ## ORpct   0.49774  0.17588  1.00000  0.04381 -0.03296
    ## TOpct  -0.33419 -0.02831  0.04381  1.00000  0.07946
    ## FT4f    0.03807  0.03773 -0.03296  0.07946  1.00000




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
