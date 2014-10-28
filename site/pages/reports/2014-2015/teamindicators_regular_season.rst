


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
| 1 | BS Leiden                 | 1.00 | 5.00 | 0.00 | 26.30     | 116.70    | 90.40     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 2 | Landstede Basketbal       | 1.00 | 4.00 | 0.00 | 8.97      | 106.55    | 97.58     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 3 | Dukes Unlimited           | 0.80 | 4.00 | 1.00 | 25.90     | 111.37    | 85.47     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 4 | BV Leeuwarden             | 0.40 | 2.00 | 3.00 | -6.05     | 98.83     | 104.88    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 5 | Den Helder Kings Noordkop | 0.40 | 2.00 | 3.00 | -7.19     | 96.27     | 103.46    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 6 | Basketball Stars Weert    | 0.25 | 1.00 | 3.00 | -12.44    | 83.92     | 96.36     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 7 | GasTerra Flames           | 0.25 | 1.00 | 3.00 | -2.47     | 93.90     | 96.37     |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 8 | Rotterdam Basketbal       | 0.25 | 1.00 | 3.00 | -17.63    | 87.46     | 105.09    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+
| 9 | BC APOLLO A'dam           | 0.00 | 0.00 | 4.00 | -25.13    | 85.06     | 110.18    |
+---+---------------------------+------+------+------+-----------+-----------+-----------+




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

    ##           Nrtg  EFGpct     ORpct     TOpct     FT4f
    ## Nrtg    1.0000 0.47309  0.540937 -0.371458  0.20440
    ## EFGpct  0.4731 1.00000  0.049980  0.048291  0.05663
    ## ORpct   0.5409 0.04998  1.000000 -0.005836  0.13827
    ## TOpct  -0.3715 0.04829 -0.005836  1.000000 -0.07578
    ## FT4f    0.2044 0.05663  0.138274 -0.075783  1.00000




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
