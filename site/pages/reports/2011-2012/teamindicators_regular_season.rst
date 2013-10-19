


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2011-2012 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+------------------------+------+-------+-------+-----------+-----------+-----------+
|   | plg_Name               | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+========================+======+=======+=======+===========+===========+===========+
| 1 | BS Leiden              | 0.79 | 22.00 | 6.00  | 13.03     | 103.42    | 90.40     |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 2 | GasTerra Flames        | 0.79 | 22.00 | 6.00  | 10.61     | 101.50    | 90.89     |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 3 | EBBC                   | 0.75 | 21.00 | 7.00  | 15.78     | 114.57    | 98.79     |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 4 | Matrixx Magixx         | 0.61 | 17.00 | 11.00 | 1.52      | 106.26    | 104.74    |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 5 | Landstede Basketbal    | 0.43 | 12.00 | 16.00 | 1.67      | 98.12     | 96.45     |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 6 | BV Aris                | 0.32 | 9.00  | 19.00 | -4.93     | 101.16    | 106.09    |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 7 | Basketball Stars Weert | 0.18 | 5.00  | 23.00 | -12.41    | 92.82     | 105.22    |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+
| 8 | Rotterdam Basketbal    | 0.14 | 4.00  | 24.00 | -25.27    | 90.03     | 115.30    |
+---+------------------------+------+-------+-------+-----------+-----------+-----------+




Ratings and Pace
----------------


.. figure:: figure/rating-quadrant.png
    :alt: 

    



.. figure:: figure/net-rating.png
    :alt: 

    



.. figure:: figure/off-rating.png
    :alt: 

    



.. figure:: figure/def-rating.png
    :alt: 

    



.. figure:: figure/pace-by-team.png
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

    ##             Nrtg   EFGpct    ORpct    TOpct    FTTpct
    ## Nrtg    1.000000  0.57096  0.33285 -0.34664 -0.004752
    ## EFGpct  0.570960  1.00000  0.03471 -0.13503 -0.047915
    ## ORpct   0.332854  0.03471  1.00000  0.08826 -0.056106
    ## TOpct  -0.346642 -0.13503  0.08826  1.00000  0.090040
    ## FTTpct -0.004752 -0.04792 -0.05611  0.09004  1.000000




By Team
^^^^^^^


.. figure:: figure/efg-by-team.png
    :alt: 

    



.. figure:: figure/or-pct-by-team.png
    :alt: 

    



.. figure:: figure/to-pct-team.png
    :alt: 

    



.. figure:: figure/ftt-pct-team.png
    :alt: 

    


By Opponent
^^^^^^^^^^^


.. figure:: figure/opp-efg-by-team.png
    :alt: 

    



.. figure:: figure/opp-or-pct-by-team.png
    :alt: 

    



.. figure:: figure/opp-to-pct-team.png
    :alt: 

    



.. figure:: figure/opp-ftt-pct-team.png
    :alt: 

    


Points
------


.. figure:: figure/point-differential-by-team.png
    :alt: 

    




.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
