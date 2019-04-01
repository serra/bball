

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
| 1  | BS Leiden                  | 0.88 | 23.00 | 3.00  | 19.80     | 115.52    | 95.72     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | Dukes Unlimited            | 0.83 | 24.00 | 5.00  | 20.49     | 111.43    | 90.94     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Landstede Basketbal        | 0.76 | 22.00 | 7.00  | 20.52     | 110.65    | 90.12     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Donar Groningen            | 0.67 | 18.00 | 9.00  | 16.24     | 115.54    | 99.30     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.57 | 16.00 | 12.00 | 1.93      | 100.11    | 98.19     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BV Noordkop                | 0.34 | 10.00 | 19.00 | -9.67     | 99.67     | 109.33    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | BV Leeuwarden              | 0.33 | 10.00 | 20.00 | -11.35    | 96.87     | 108.23    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal        | 0.28 | 8.00  | 21.00 | -13.88    | 93.03     | 106.90    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | BC APOLLO Amsterdam        | 0.27 | 8.00  | 22.00 | -14.23    | 99.54     | 113.77    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketbal Academie Limburg | 0.14 | 4.00  | 25.00 | -25.73    | 88.79     | 114.52    |
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

    ##              Nrtg      EFGpct       ORpct        TOpct         FT4f
    ## Nrtg    1.0000000  0.62871011 0.263720445 -0.463017427  0.251222897
    ## EFGpct  0.6287101  1.00000000 0.105053323 -0.221927333  0.015871416
    ## ORpct   0.2637204  0.10505332 1.000000000  0.001030888  0.006960512
    ## TOpct  -0.4630174 -0.22192733 0.001030888  1.000000000 -0.117017401
    ## FT4f    0.2512229  0.01587142 0.006960512 -0.117017401  1.000000000



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
