


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2010-2011 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name               | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+========================+======+=======+=======+===========+===========+===========+
| 1  | BS Leiden              | 0.81 | 29.00 | 7.00  | 13.95     | 102.86    | 88.91     |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | GasTerra Flames        | 0.81 | 29.00 | 7.00  | 18.80     | 105.68    | 86.89     |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | EBBC                   | 0.72 | 26.00 | 10.00 | 13.77     | 108.88    | 95.11     |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Matrixx Magixx         | 0.58 | 21.00 | 15.00 | 0.76      | 95.82     | 95.06     |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | BV Aris                | 0.47 | 17.00 | 19.00 | -5.42     | 98.79     | 104.21    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | Giants Academy         | 0.47 | 17.00 | 19.00 | 3.36      | 103.66    | 100.29    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Basketball Stars Weert | 0.44 | 16.00 | 20.00 | -1.26     | 99.80     | 101.06    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | ABC Amsterdam          | 0.36 | 13.00 | 23.00 | -7.50     | 94.30     | 101.80    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | Landstede Basketbal    | 0.28 | 10.00 | 26.00 | -12.19    | 92.67     | 104.86    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Rotterdam Basketbal    | 0.06 | 2.00  | 34.00 | -24.28    | 87.34     | 111.62    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+




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

    ##            Nrtg    EFGpct    ORpct    TOpct      FT4f
    ## Nrtg    1.00000  0.580632 0.391750 -0.24349  0.036587
    ## EFGpct  0.58063  1.000000 0.049605 -0.06826 -0.004145
    ## ORpct   0.39175  0.049605 1.000000  0.08502  0.003564
    ## TOpct  -0.24349 -0.068262 0.085016  1.00000  0.003400
    ## FT4f    0.03659 -0.004145 0.003564  0.00340  1.000000




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
