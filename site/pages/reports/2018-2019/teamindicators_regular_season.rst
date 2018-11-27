

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2018-2019 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
|    | plg_Name                   | pct  | W     | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+============================+======+=======+=======+===========+===========+===========+
| 1  | Landstede Basketbal        | 1.00 | 10.00 | 0.00  | 30.90     | 115.93    | 85.04     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | BS Leiden                  | 0.89 | 8.00  | 1.00  | 22.43     | 115.75    | 93.31     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Donar Groningen            | 0.80 | 8.00  | 2.00  | 31.36     | 122.78    | 91.43     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Dukes Unlimited            | 0.78 | 7.00  | 2.00  | 23.94     | 116.38    | 92.44     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.50 | 5.00  | 5.00  | -3.51     | 93.91     | 97.42     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.36 | 4.00  | 7.00  | -19.66    | 93.92     | 113.57    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal        | 0.33 | 4.00  | 8.00  | -12.32    | 91.59     | 103.91    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BV Noordkop                | 0.27 | 3.00  | 8.00  | -13.08    | 95.68     | 108.75    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | Basketbal Academie Limburg | 0.11 | 1.00  | 8.00  | -25.92    | 96.73     | 122.65    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | BC APOLLO Amsterdam        | 0.09 | 1.00  | 10.00 | -23.97    | 93.09     | 117.05    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.


.. figure:: figure/rating-quadrant-1.png
    :alt: 

    


.. figure:: figure/net-rating-1.png
    :alt: 

    


.. figure:: figure/off-rating-1.png
    :alt: 

    


.. figure:: figure/def-rating-1.png
    :alt: 

    

Pace
----


.. figure:: figure/pace-by-team-1.png
    :alt: 

    

Points
------


.. figure:: figure/point-differential-by-team-1.png
    :alt: 

    

Four Factors
------------

The net rating is plotted against all "four factors"
for all games in this competition.
These plots show us how each of the four factors influences the net rating.
Because we can assume the net rating to be the best indicator of actually winning games,
these plots show how and how strongly each of the four factors contribute to winning basketball games in the DBL in this season. 


.. figure:: figure/net-rating-by-four-factor-1.png
    :alt: 

    

The correlation matrix for the four factors and the net rating is displayed below:



::

    ##              Nrtg      EFGpct        ORpct      TOpct         FT4f
    ## Nrtg    1.0000000  0.66415811  0.345299956 -0.5866301  0.108199378
    ## EFGpct  0.6641581  1.00000000  0.178894259 -0.2621759  0.050630020
    ## ORpct   0.3453000  0.17889426  1.000000000  0.1223572 -0.008446885
    ## TOpct  -0.5866301 -0.26217586  0.122357244  1.0000000 -0.139034766
    ## FT4f    0.1081994  0.05063002 -0.008446885 -0.1390348  1.000000000



Offense
^^^^^^^

This shows the four factors for each of the teams.


.. figure:: figure/efg-by-team-1.png
    :alt: 

    


.. figure:: figure/or-pct-by-team-1.png
    :alt: 

    


.. figure:: figure/to-pct-team-1.png
    :alt: 

    


.. figure:: figure/ftt-pct-team-1.png
    :alt: 

    

Defense
^^^^^^^

This shows the four factors of the team's opponents for each of the teams.


.. figure:: figure/opp-efg-by-team-1.png
    :alt: 

    


.. figure:: figure/opp-or-pct-by-team-1.png
    :alt: 

    


.. figure:: figure/opp-to-pct-team-1.png
    :alt: 

    


.. figure:: figure/opp-ftt-pct-team-1.png
    :alt: 

    


Shot selection
--------------


.. figure:: figure/shot-selection-ftt-team-1.png
    :alt: 

    


.. figure:: figure/shot-selection-2s-team-1.png
    :alt: 

    


.. figure:: figure/shot-selection-3s-team-1.png
    :alt: 

    


.. figure:: figure/shot-selection-history-team-1.png
    :alt: 

    



.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
