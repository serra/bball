


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
| 5  | BS Leiden                 | 0.64 | 9.00  | 5.00  | 4.28      | 102.13    | 97.86     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | Den Helder Kings Noordkop | 0.60 | 9.00  | 6.00  | 5.18      | 110.97    | 105.78    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal       | 0.40 | 6.00  | 9.00  | -8.31     | 99.85     | 108.16    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BV Aris                   | 0.20 | 3.00  | 12.00 | -13.84    | 96.55     | 110.39    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.15 | 2.00  | 11.00 | -20.12    | 83.59     | 103.71    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00  | 15.00 | -25.12    | 86.98     | 112.09    |
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
    ## Nrtg    1.00000  0.56060  0.45875 -0.34390  0.04573
    ## EFGpct  0.56060  1.00000  0.10638 -0.05291  0.06851
    ## ORpct   0.45875  0.10638  1.00000  0.05014 -0.07985
    ## TOpct  -0.34390 -0.05291  0.05014  1.00000  0.09038
    ## FT4f    0.04573  0.06851 -0.07985  0.09038  1.00000




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
