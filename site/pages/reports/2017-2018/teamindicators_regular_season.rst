

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2017-2018 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+----------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name                   | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+============================+======+======+======+===========+===========+===========+
| 1 | BS Leiden                  | 1.00 | 8.00 | 0.00 | 17.21     | 108.76    | 91.55     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Donar                      | 0.88 | 7.00 | 1.00 | 31.57     | 118.25    | 86.69     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 3 | New Heroes                 | 0.71 | 5.00 | 2.00 | 18.29     | 109.31    | 91.02     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Landstede Basketbal        | 0.67 | 6.00 | 3.00 | 13.96     | 109.75    | 95.79     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BC APOLLO Amsterdam        | 0.38 | 3.00 | 5.00 | -8.12     | 98.97     | 107.09    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal        | 0.38 | 3.00 | 5.00 | -9.43     | 99.82     | 109.24    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden              | 0.33 | 3.00 | 6.00 | -17.75    | 94.12     | 111.87    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketbal Academie Limburg | 0.12 | 1.00 | 7.00 | -18.22    | 89.42     | 107.64    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 9 | BV Noordkop                | 0.00 | 0.00 | 7.00 | -28.29    | 89.99     | 118.29    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+



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

    ##              Nrtg      EFGpct      ORpct      TOpct       FT4f
    ## Nrtg    1.0000000  0.64912630  0.5421208 -0.3607075 0.13524500
    ## EFGpct  0.6491263  1.00000000  0.3102696 -0.0851309 0.09719701
    ## ORpct   0.5421208  0.31026961  1.0000000 -0.1271957 0.21745766
    ## TOpct  -0.3607075 -0.08513090 -0.1271957  1.0000000 0.08465250
    ## FT4f    0.1352450  0.09719701  0.2174577  0.0846525 1.00000000



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
