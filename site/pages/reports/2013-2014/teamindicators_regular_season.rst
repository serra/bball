


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2013-2014 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+---------------------------+------+------+------+-----------+-----------+-----------+
|    | plg_Name                  | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+===========================+======+======+======+===========+===========+===========+
| 1  | Dukes Unlimited           | 1.00 | 4.00 | 0.00 | 20.67     | 107.07    | 86.40     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 2  | Landstede Basketbal       | 1.00 | 3.00 | 0.00 | 27.30     | 112.25    | 84.95     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 3  | BV Aris                   | 0.67 | 2.00 | 1.00 | 4.37      | 110.19    | 105.83    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 4  | Den Helder Kings Noordkop | 0.67 | 2.00 | 1.00 | 2.79      | 112.59    | 109.80    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 5  | GasTerra Flames           | 0.60 | 3.00 | 2.00 | 7.17      | 96.16     | 88.99     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 6  | BS Leiden                 | 0.50 | 2.00 | 2.00 | -1.19     | 98.50     | 99.69     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 7  | Matrixx Magixx            | 0.33 | 1.00 | 2.00 | 4.04      | 100.01    | 95.97     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal       | 0.33 | 1.00 | 2.00 | -13.33    | 105.85    | 119.18    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.00 | 0.00 | 5.00 | -25.25    | 80.57     | 105.82    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00 | 3.00 | -21.00    | 89.59     | 110.59    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+




Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.


.. figure:: figure/rating-quadrant.png
    :alt: 

    



.. figure:: figure/net-rating.png
    :alt: 

    



.. figure:: figure/off-rating.png
    :alt: 

    



.. figure:: figure/def-rating.png
    :alt: 

    


Pace
----


.. figure:: figure/pace-by-team.png
    :alt: 

    


Points
------


.. figure:: figure/point-differential-by-team.png
    :alt: 

    


Four Factors
------------

The net rating is plotted against all "four factors"
for all games in this competition.
These plots show us how each of the four factors influences the net rating.
Because we can assume the net rating to be the best indicator of actually winning games,
these plots show how and how strongly each of the four factors contribute to winning basketball games in the DBL in this season. 


.. figure:: figure/net-rating-by-four-factor.png
    :alt: 

    


The correlation matrix for the four factors and the net rating is displayed below:



::

    ##            Nrtg   EFGpct    ORpct    TOpct     FT4f
    ## Nrtg    1.00000  0.49809  0.30226 -0.47162 -0.01078
    ## EFGpct  0.49809  1.00000 -0.03764 -0.25253  0.04308
    ## ORpct   0.30226 -0.03764  1.00000  0.04566 -0.01734
    ## TOpct  -0.47162 -0.25253  0.04566  1.00000  0.06907
    ## FT4f   -0.01078  0.04308 -0.01734  0.06907  1.00000




Offense
^^^^^^^

This shows the four factors for each of the teams.


.. figure:: figure/efg-by-team.png
    :alt: 

    



.. figure:: figure/or-pct-by-team.png
    :alt: 

    



.. figure:: figure/to-pct-team.png
    :alt: 

    



.. figure:: figure/ftt-pct-team.png
    :alt: 

    


Defense
^^^^^^^

This shows the four factors of the team's opponents for each of the teams.


.. figure:: figure/opp-efg-by-team.png
    :alt: 

    



.. figure:: figure/opp-or-pct-by-team.png
    :alt: 

    



.. figure:: figure/opp-to-pct-team.png
    :alt: 

    



.. figure:: figure/opp-ftt-pct-team.png
    :alt: 

    



Shot selection
--------------


.. figure:: figure/shot-selection-ftt-team.png
    :alt: 

    



.. figure:: figure/shot-selection-2s-team.png
    :alt: 

    



.. figure:: figure/shot-selection-3s-team.png
    :alt: 

    



.. figure:: figure/shot-selection-history-team.png
    :alt: 

    




.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
