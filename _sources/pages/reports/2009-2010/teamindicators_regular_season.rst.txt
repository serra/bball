


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2009-2010 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name               | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+========================+======+=======+=======+===========+===========+===========+
| 1  | GasTerra Flames        | 0.92 | 33.00 | 3.00  | 19.74     | 115.21    | 95.47     |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | Giants Academy         | 0.67 | 24.00 | 12.00 | 10.97     | 107.64    | 96.67     |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | EBBC                   | 0.64 | 23.00 | 12.00 | 7.98      | 112.04    | 104.06    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Matrixx Magixx         | 0.64 | 23.00 | 13.00 | 7.79      | 106.40    | 98.60     |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | BS Leiden              | 0.61 | 22.00 | 14.00 | 5.60      | 106.27    | 100.68    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BV Aris                | 0.53 | 19.00 | 16.00 | 0.92      | 103.71    | 102.79    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | ABC Amsterdam          | 0.39 | 14.00 | 22.00 | -2.50     | 100.15    | 102.65    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | Basketball Stars Weert | 0.33 | 12.00 | 24.00 | -10.71    | 99.17     | 109.88    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | Landstede Basketbal    | 0.14 | 5.00  | 31.00 | -15.52    | 95.86     | 111.38    |
+----+------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Rotterdam Basketbal    | 0.11 | 4.00  | 32.00 | -24.26    | 84.37     | 108.64    |
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

    ##           Nrtg    EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.0000  0.588212  0.33049 -0.24311 0.136350
    ## EFGpct  0.5882  1.000000 -0.02275 -0.10390 0.002021
    ## ORpct   0.3305 -0.022752  1.00000  0.24740 0.054431
    ## TOpct  -0.2431 -0.103898  0.24740  1.00000 0.015575
    ## FT4f    0.1364  0.002021  0.05443  0.01557 1.000000




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
