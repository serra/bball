

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
| 1  | BS Leiden                  | 0.89 | 16.00 | 2.00  | 18.98     | 116.13    | 97.15     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 2  | Landstede Basketbal        | 0.81 | 17.00 | 4.00  | 22.86     | 111.24    | 88.38     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 3  | Dukes Unlimited            | 0.79 | 15.00 | 4.00  | 22.63     | 113.57    | 90.94     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 4  | Donar Groningen            | 0.74 | 14.00 | 5.00  | 20.64     | 118.60    | 97.96     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.53 | 10.00 | 9.00  | -1.35     | 98.40     | 99.76     |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 6  | BV Noordkop                | 0.35 | 7.00  | 13.00 | -12.13    | 96.36     | 108.49    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 7  | BV Leeuwarden              | 0.33 | 7.00  | 14.00 | -13.71    | 96.33     | 110.04    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 8  | BC APOLLO Amsterdam        | 0.25 | 5.00  | 15.00 | -15.25    | 96.38     | 111.63    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 9  | Rotterdam Basketbal        | 0.25 | 5.00  | 15.00 | -11.39    | 93.62     | 105.01    |
+----+----------------------------+------+-------+-------+-----------+-----------+-----------+
| 10 | Basketbal Academie Limburg | 0.14 | 3.00  | 18.00 | -26.42    | 89.33     | 115.75    |
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

    ##              Nrtg      EFGpct      ORpct       TOpct        FT4f
    ## Nrtg    1.0000000  0.59529955 0.36037517 -0.49554764  0.17791995
    ## EFGpct  0.5952996  1.00000000 0.10790289 -0.20832274 -0.02446671
    ## ORpct   0.3603752  0.10790289 1.00000000  0.06164158  0.07498065
    ## TOpct  -0.4955476 -0.20832274 0.06164158  1.00000000 -0.07236494
    ## FT4f    0.1779199 -0.02446671 0.07498065 -0.07236494  1.00000000



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
