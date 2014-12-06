

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2014-2015 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+---------------------------+------+------+-------+-----------+-----------+-----------+
|   | plg_Name                  | pct  | W    | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+===========================+======+======+=======+===========+===========+===========+
| 1 | Dukes Unlimited           | 0.90 | 9.00 | 1.00  | 30.32     | 115.58    | 85.25     |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+
| 2 | BS Leiden                 | 0.82 | 9.00 | 2.00  | 20.46     | 112.31    | 91.84     |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+
| 3 | Den Helder Kings Noordkop | 0.73 | 8.00 | 3.00  | 9.36      | 107.10    | 97.74     |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+
| 4 | Landstede Basketbal       | 0.70 | 7.00 | 3.00  | 3.34      | 105.41    | 102.06    |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+
| 5 | GasTerra Flames           | 0.64 | 7.00 | 4.00  | 14.80     | 104.86    | 90.06     |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+
| 6 | Rotterdam Basketbal       | 0.33 | 4.00 | 8.00  | -9.16     | 98.01     | 107.17    |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+
| 7 | BV Leeuwarden             | 0.27 | 3.00 | 8.00  | -9.42     | 99.32     | 108.74    |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+
| 8 | BC APOLLO A'dam           | 0.10 | 1.00 | 9.00  | -29.71    | 84.57     | 114.28    |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+
| 9 | Basketball Stars Weert    | 0.08 | 1.00 | 11.00 | -26.41    | 85.66     | 112.07    |
+---+---------------------------+------+------+-------+-----------+-----------+-----------+



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

    ##              Nrtg      EFGpct      ORpct        TOpct         FT4f
    ## Nrtg    1.0000000  0.66158746 0.37912311 -0.436507222  0.215520651
    ## EFGpct  0.6615875  1.00000000 0.08326477 -0.242312474  0.107364889
    ## ORpct   0.3791231  0.08326477 1.00000000  0.103605869  0.070348616
    ## TOpct  -0.4365072 -0.24231247 0.10360587  1.000000000 -0.002110809
    ## FT4f    0.2155207  0.10736489 0.07034862 -0.002110809  1.000000000



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
