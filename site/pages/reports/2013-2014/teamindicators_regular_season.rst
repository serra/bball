


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
| 1  | GasTerra Flames           | 0.82 | 18.00 | 4.00  | 23.64     | 108.44    | 84.80     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | Landstede Basketbal       | 0.74 | 14.00 | 5.00  | 12.80     | 105.90    | 93.10     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Dukes Unlimited           | 0.71 | 15.00 | 6.00  | 15.58     | 111.50    | 95.92     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Den Helder Kings Noordkop | 0.68 | 13.00 | 6.00  | 6.93      | 110.81    | 103.87    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Matrixx Magixx            | 0.60 | 12.00 | 8.00  | 11.19     | 109.95    | 98.76     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BS Leiden                 | 0.58 | 11.00 | 8.00  | 5.18      | 102.72    | 97.54     |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | BV Aris                   | 0.30 | 6.00  | 14.00 | -11.02    | 96.96     | 107.97    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal       | 0.30 | 6.00  | 14.00 | -15.99    | 94.46     | 110.45    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.20 | 4.00  | 16.00 | -20.77    | 84.86     | 105.63    |
+----+---------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.05 | 1.00  | 19.00 | -29.45    | 83.80     | 113.25    |
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

    ##           Nrtg   EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.0000  0.63530  0.41008 -0.36158  0.11035
    ## EFGpct  0.6353  1.00000  0.07224 -0.08085  0.08215
    ## ORpct   0.4101  0.07224  1.00000 -0.03343 -0.01801
    ## TOpct  -0.3616 -0.08085 -0.03343  1.00000  0.01306
    ## FT4f    0.1104  0.08215 -0.01801  0.01306  1.00000




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
