


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
| 1  | Landstede Basketbal       | 0.90 | 9.00 | 1.00 | 15.32     | 108.78    | 93.46     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 2  | GasTerra Flames           | 0.80 | 8.00 | 2.00 | 20.60     | 103.11    | 82.50     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 3  | BS Leiden                 | 0.67 | 6.00 | 3.00 | 5.44      | 102.20    | 96.76     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 4  | Dukes Unlimited           | 0.67 | 6.00 | 3.00 | 9.14      | 105.36    | 96.22     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 5  | Matrixx Magixx            | 0.67 | 6.00 | 3.00 | 11.44     | 108.06    | 96.62     |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 6  | Den Helder Kings Noordkop | 0.45 | 5.00 | 6.00 | 0.26      | 109.06    | 108.80    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 7  | Rotterdam Basketbal       | 0.44 | 4.00 | 5.00 | -6.40     | 102.29    | 108.69    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 8  | BV Aris                   | 0.30 | 3.00 | 7.00 | -11.21    | 96.17     | 107.38    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO A'dam           | 0.10 | 1.00 | 9.00 | -17.00    | 85.17     | 102.17    |
+----+---------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketball Stars Weert    | 0.00 | 0.00 | 9.00 | -28.50    | 85.31     | 113.82    |
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

    ##           Nrtg    EFGpct     ORpct    TOpct     FT4f
    ## Nrtg    1.0000  0.551042  0.361959 -0.39213  0.12210
    ## EFGpct  0.5510  1.000000 -0.001796 -0.14303  0.14438
    ## ORpct   0.3620 -0.001796  1.000000  0.06102 -0.07297
    ## TOpct  -0.3921 -0.143030  0.061015  1.00000  0.02216
    ## FT4f    0.1221  0.144377 -0.072971  0.02216  1.00000




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
