

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
| 1 | Landstede Basketbal    | 1.00 | 6.00 | 0.00 | 11.37     | 106.52    | 95.15     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 2 | GasTerra Flames        | 0.83 | 5.00 | 1.00 | 27.57     | 110.84    | 83.27     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 3 | BS Leiden              | 0.67 | 4.00 | 2.00 | 1.33      | 89.29     | 87.96     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BC APOLLO A'dam        | 0.60 | 3.00 | 2.00 | -5.54     | 106.08    | 111.63    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Rotterdam Basketbal    | 0.40 | 2.00 | 3.00 | -3.29     | 92.39     | 95.68     |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 6 | BV Leeuwarden          | 0.33 | 2.00 | 4.00 | -11.80    | 94.97     | 106.77    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 7 | Dukes Unlimited        | 0.17 | 1.00 | 5.00 | -10.03    | 95.04     | 105.07    |
+---+------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Basketball Stars Weert | 0.00 | 0.00 | 6.00 | -11.09    | 90.40     | 101.49    |
+---+------------------------+------+------+------+-----------+-----------+-----------+



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

    ##               Nrtg      EFGpct     ORpct       TOpct        FT4f
    ## Nrtg    1.00000000  0.51723434 0.5019155 -0.09306544  0.16457243
    ## EFGpct  0.51723434  1.00000000 0.1816391  0.04298177 -0.01661585
    ## ORpct   0.50191550  0.18163906 1.0000000  0.10115882  0.21140135
    ## TOpct  -0.09306544  0.04298177 0.1011588  1.00000000  0.02384163
    ## FT4f    0.16457243 -0.01661585 0.2114013  0.02384163  1.00000000



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
