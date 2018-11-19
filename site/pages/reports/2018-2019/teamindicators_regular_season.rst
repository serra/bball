

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


+----+----------------------------+------+------+------+-----------+-----------+-----------+
|    | plg_Name                   | pct  | W    | L    | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+============================+======+======+======+===========+===========+===========+
| 1  | Landstede Basketbal        | 1.00 | 8.00 | 0.00 | 30.86     | 116.15    | 85.29     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 2  | Donar Groningen            | 0.88 | 7.00 | 1.00 | 34.44     | 124.97    | 90.53     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 3  | BS Leiden                  | 0.86 | 6.00 | 1.00 | 19.19     | 113.36    | 94.17     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 4  | Dukes Unlimited            | 0.75 | 6.00 | 2.00 | 25.44     | 117.30    | 91.87     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.62 | 5.00 | 3.00 | 1.12      | 96.81     | 95.69     |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.44 | 4.00 | 5.00 | -16.37    | 93.76     | 110.13    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 7  | BV Noordkop                | 0.30 | 3.00 | 7.00 | -9.66     | 97.95     | 107.60    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal        | 0.30 | 3.00 | 7.00 | -14.50    | 91.20     | 105.70    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 9  | BC APOLLO Amsterdam        | 0.00 | 0.00 | 9.00 | -29.33    | 87.28     | 116.61    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+
| 10 | Basketbal Academie Limburg | 0.00 | 0.00 | 7.00 | -30.90    | 92.07     | 122.97    |
+----+----------------------------+------+------+------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 2 rows containing missing values (geom_point).



::

    ## Warning: Removed 2 rows containing missing values (geom_text).


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

    ##              Nrtg      EFGpct       ORpct      TOpct        FT4f
    ## Nrtg    1.0000000  0.65725561  0.34841003 -0.5443723  0.10820016
    ## EFGpct  0.6572556  1.00000000  0.18521970 -0.1964912  0.05611169
    ## ORpct   0.3484100  0.18521970  1.00000000  0.1734245 -0.02280948
    ## TOpct  -0.5443723 -0.19649115  0.17342452  1.0000000 -0.11638089
    ## FT4f    0.1082002  0.05611169 -0.02280948 -0.1163809  1.00000000



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
