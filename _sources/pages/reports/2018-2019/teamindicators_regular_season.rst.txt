

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
| 1  | BS Leiden                  | 0.87 | 13.00 | 2.00  | 16.51     | 114.73    | 98.22     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | Dukes Unlimited            | 0.82 | 14.00 | 3.00  | 24.26     | 113.35    | 89.09     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Landstede Basketbal        | 0.79 | 15.00 | 4.00  | 21.14     | 111.16    | 90.02     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Donar Groningen            | 0.76 | 13.00 | 4.00  | 23.34     | 120.84    | 97.50     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.59 | 10.00 | 7.00  | -0.87     | 98.21     | 99.09     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.35 | 6.00  | 11.00 | -14.24    | 96.45     | 110.69    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | BV Noordkop                | 0.35 | 6.00  | 11.00 | -11.32    | 97.50     | 108.82    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal        | 0.22 | 4.00  | 14.00 | -10.88    | 93.50     | 104.38    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO Amsterdam        | 0.17 | 3.00  | 15.00 | -19.04    | 95.30     | 114.34    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketbal Academie Limburg | 0.16 | 3.00  | 16.00 | -24.76    | 90.50     | 115.25    |
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

    ##              Nrtg      EFGpct      ORpct       TOpct        FT4f
    ## Nrtg    1.0000000  0.58272709 0.34300936 -0.50136030  0.19587628
    ## EFGpct  0.5827271  1.00000000 0.07139906 -0.21422201 -0.03378353
    ## ORpct   0.3430094  0.07139906 1.00000000  0.06784508  0.06991350
    ## TOpct  -0.5013603 -0.21422201 0.06784508  1.00000000 -0.07272304
    ## FT4f    0.1958763 -0.03378353 0.06991350 -0.07272304  1.00000000



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
