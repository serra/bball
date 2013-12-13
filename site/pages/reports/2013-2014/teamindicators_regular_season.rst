


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
| 1  | Landstede Basketbal       | 0.92 | 11.00 | 1.00  | 19.63     | 108.78    | 89.15     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | GasTerra Flames           | 0.85 | 11.00 | 2.00  | 20.40     | 103.52    | 83.12     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Dukes Unlimited           | 0.69 | 9.00  | 4.00  | 10.39     | 106.58    | 96.19     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Matrixx Magixx            | 0.69 | 9.00  | 4.00  | 15.16     | 111.69    | 96.53     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | BS Leiden                 | 0.62 | 8.00  | 5.00  | 3.85      | 101.32    | 97.48     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | Den Helder Kings Noordkop | 0.57 | 8.00  | 6.00  | 4.33      | 110.53    | 106.20    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal       | 0.43 | 6.00  | 8.00  | -8.20     | 99.64     | 107.83    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BV Aris                   | 0.20 | 3.00  | 12.00 | -13.84    | 96.55     | 110.39    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.15 | 2.00  | 11.00 | -20.12    | 83.59     | 103.71    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00  | 14.00 | -25.69    | 86.05     | 111.73    |
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
    ## Nrtg    1.00000  0.56311  0.45474 -0.34227  0.05381
    ## EFGpct  0.56311  1.00000  0.11072 -0.04972  0.07360
    ## ORpct   0.45474  0.11072  1.00000  0.05112 -0.09027
    ## TOpct  -0.34227 -0.04972  0.05112  1.00000  0.09335
    ## FT4f    0.05381  0.07360 -0.09027  0.09335  1.00000




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
