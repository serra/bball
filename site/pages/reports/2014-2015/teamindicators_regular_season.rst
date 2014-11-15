

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


+---+---------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name                  | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+===========================+======+======+======+===========+===========+===========+
| 1 | BS Leiden                 | 0.88 | 7.00 | 1.00 | 20.53     | 110.46    | 89.92     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Dukes Unlimited           | 0.86 | 6.00 | 1.00 | 22.68     | 110.03    | 87.35     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Landstede Basketbal       | 0.86 | 6.00 | 1.00 | 12.25     | 105.04    | 92.79     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Den Helder Kings Noordkop | 0.57 | 4.00 | 3.00 | 0.94      | 98.99     | 98.05     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal       | 0.50 | 4.00 | 4.00 | -5.18     | 97.52     | 102.70    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 6 | GasTerra Flames           | 0.43 | 3.00 | 4.00 | 7.61      | 97.02     | 89.41     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 7 | BV Leeuwarden             | 0.29 | 2.00 | 5.00 | -14.24    | 93.63     | 107.87    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert    | 0.12 | 1.00 | 7.00 | -16.37    | 88.58     | 104.95    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 9 | BC APOLLO A'dam           | 0.00 | 0.00 | 7.00 | -28.08    | 81.29     | 109.38    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+



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
    ## Nrtg    1.0000000  0.58259949 0.46964722 -0.32031029  0.14856253
    ## EFGpct  0.5825995  1.00000000 0.08105635 -0.11387219 -0.04909195
    ## ORpct   0.4696472  0.08105635 1.00000000  0.08937368  0.28430519
    ## TOpct  -0.3203103 -0.11387219 0.08937368  1.00000000  0.07408231
    ## FT4f    0.1485625 -0.04909195 0.28430519  0.07408231  1.00000000



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
