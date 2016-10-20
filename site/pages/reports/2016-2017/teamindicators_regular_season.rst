

..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2016-2017 Regular season
====================================================

Results
-------

The following teams are in this competition:


+---+------------------------+------+------+------+-----------+-----------+-----------+
|   | plg_Name               | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+===+========================+======+======+======+===========+===========+===========+
| 1 | BS Leiden              | 1.00 | 3.00 | 0.00 | 14.91     | 92.06     | 77.15     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | GasTerra Flames        | 1.00 | 3.00 | 0.00 | 31.08     | 116.06    | 84.98     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Landstede Basketbal    | 1.00 | 2.00 | 0.00 | 25.37     | 122.39    | 97.01     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | Rotterdam Basketbal    | 0.50 | 1.00 | 1.00 | -10.84    | 87.92     | 98.77     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | BV Leeuwarden          | 0.33 | 1.00 | 2.00 | -10.99    | 94.25     | 105.24    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BC APOLLO A'dam        | 0.00 | 0.00 | 2.00 | -31.32    | 100.64    | 131.96    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Basketball Stars Weert | 0.00 | 0.00 | 3.00 | -11.77    | 93.86     | 105.63    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Dukes Unlimited        | 0.00 | 0.00 | 2.00 | -18.05    | 90.11     | 108.16    |
+---+------------------------+------+------+------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 3 rows containing missing values (geom_point).



::

    ## Warning: Removed 3 rows containing missing values (geom_text).


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

    ##               Nrtg     EFGpct      ORpct       TOpct        FT4f
    ## Nrtg    1.00000000  0.4931928 0.50824196 -0.35899000  0.01997777
    ## EFGpct  0.49319278  1.0000000 0.26597416 -0.34075175 -0.16047923
    ## ORpct   0.50824196  0.2659742 1.00000000  0.01295483  0.16894818
    ## TOpct  -0.35899000 -0.3407517 0.01295483  1.00000000 -0.19684182
    ## FT4f    0.01997777 -0.1604792 0.16894818 -0.19684182  1.00000000



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
