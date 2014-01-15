


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
| 1  | Landstede Basketbal       | 0.82 | 14.00 | 3.00  | 14.72     | 107.63    | 92.92     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | GasTerra Flames           | 0.79 | 15.00 | 4.00  | 22.18     | 107.05    | 84.87     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Dukes Unlimited           | 0.74 | 14.00 | 5.00  | 16.27     | 110.84    | 94.57     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Den Helder Kings Noordkop | 0.67 | 12.00 | 6.00  | 6.57      | 111.33    | 104.76    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Matrixx Magixx            | 0.61 | 11.00 | 7.00  | 11.98     | 110.89    | 98.90     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BS Leiden                 | 0.59 | 10.00 | 7.00  | 6.34      | 103.25    | 96.92     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal       | 0.33 | 6.00  | 12.00 | -13.16    | 96.45     | 109.62    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BV Aris                   | 0.32 | 6.00  | 13.00 | -10.53    | 97.53     | 108.06    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.17 | 3.00  | 15.00 | -21.86    | 83.71     | 105.58    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00  | 19.00 | -31.15    | 83.96     | 115.11    |
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
    ## Nrtg    1.00000  0.62637  0.43277 -0.36215  0.09223
    ## EFGpct  0.62637  1.00000  0.10754 -0.07039  0.06417
    ## ORpct   0.43277  0.10754  1.00000  0.01055 -0.02563
    ## TOpct  -0.36215 -0.07039  0.01055  1.00000  0.03487
    ## FT4f    0.09223  0.06417 -0.02563  0.03487  1.00000




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
