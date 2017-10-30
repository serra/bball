

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
| 1 | BS Leiden                  | 1.00 | 4.00 | 0.00 | 21.82     | 115.00    | 93.18     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Landstede Basketbal        | 0.80 | 4.00 | 1.00 | 21.80     | 109.50    | 87.70     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 3 | BC APOLLO Amsterdam        | 0.75 | 3.00 | 1.00 | 4.11      | 105.15    | 101.04    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Donar                      | 0.75 | 3.00 | 1.00 | 29.38     | 113.98    | 84.60     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 5 | New Heroes                 | 0.75 | 3.00 | 1.00 | 26.40     | 110.77    | 84.37     |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BV Leeuwarden              | 0.40 | 2.00 | 3.00 | -14.10    | 98.29     | 112.39    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Rotterdam Basketbal        | 0.25 | 1.00 | 3.00 | -17.64    | 100.26    | 117.89    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 8 | BV Noordkop                | 0.00 | 0.00 | 5.00 | -29.88    | 90.89     | 120.77    |
+---+----------------------------+------+------+------+-----------+-----------+-----------+
| 9 | Basketbal Academie Limburg | 0.00 | 0.00 | 5.00 | -29.08    | 86.85     | 115.92    |
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

    ##              Nrtg      EFGpct      ORpct        TOpct        FT4f
    ## Nrtg    1.0000000  0.66736453  0.4665605 -0.418430545 0.138930790
    ## EFGpct  0.6673645  1.00000000  0.2252956 -0.065432389 0.092021407
    ## ORpct   0.4665605  0.22529560  1.0000000 -0.147036554 0.237583064
    ## TOpct  -0.4184305 -0.06543239 -0.1470366  1.000000000 0.009894829
    ## FT4f    0.1389308  0.09202141  0.2375831  0.009894829 1.000000000



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
