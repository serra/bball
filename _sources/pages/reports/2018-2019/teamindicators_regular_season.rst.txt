

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
| 1  | Landstede Basketbal        | 0.94 | 15.00 | 1.00  | 27.00     | 114.83    | 87.82     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | BS Leiden                  | 0.85 | 11.00 | 2.00  | 17.42     | 115.54    | 98.13     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Donar Groningen            | 0.79 | 11.00 | 3.00  | 24.63     | 121.09    | 96.46     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Dukes Unlimited            | 0.79 | 11.00 | 3.00  | 22.11     | 113.97    | 91.86     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.57 | 8.00  | 6.00  | 0.54      | 98.40     | 97.86     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.33 | 5.00  | 10.00 | -16.62    | 95.14     | 111.76    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | BV Noordkop                | 0.27 | 4.00  | 11.00 | -14.95    | 96.14     | 111.09    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal        | 0.25 | 4.00  | 12.00 | -11.18    | 93.72     | 104.90    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO Amsterdam        | 0.19 | 3.00  | 13.00 | -19.48    | 94.23     | 113.71    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketbal Academie Limburg | 0.13 | 2.00  | 13.00 | -23.76    | 94.47     | 118.23    |
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

    ##              Nrtg        EFGpct      ORpct       TOpct          FT4f
    ## Nrtg    1.0000000  0.6010102999 0.34175522 -0.55198570  0.1723798062
    ## EFGpct  0.6010103  1.0000000000 0.10533260 -0.19988537 -0.0003955444
    ## ORpct   0.3417552  0.1053326023 1.00000000  0.06364539  0.0209495357
    ## TOpct  -0.5519857 -0.1998853652 0.06364539  1.00000000 -0.1593954170
    ## FT4f    0.1723798 -0.0003955444 0.02094954 -0.15939542  1.0000000000



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
