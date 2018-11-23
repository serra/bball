

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


+----+----------------------------+------+------+-------+-----------+-----------+-----------+
|    | plg_Name                   | pct  | W    | L     | avg(Nrtg) | avg(Ortg) | avg(Drtg) |
+====+============================+======+======+=======+===========+===========+===========+
| 1  | Landstede Basketbal        | 1.00 | 9.00 | 0.00  | 29.07     | 115.45    | 86.38     |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 2  | Donar Groningen            | 0.89 | 8.00 | 1.00  | 36.17     | 125.65    | 89.48     |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 3  | BS Leiden                  | 0.88 | 7.00 | 1.00  | 20.80     | 113.77    | 92.97     |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 4  | Dukes Unlimited            | 0.75 | 6.00 | 2.00  | 25.44     | 117.30    | 91.87     |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 5  | Dutch Windmills            | 0.56 | 5.00 | 4.00  | -2.57     | 95.45     | 98.02     |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 6  | BV Leeuwarden              | 0.40 | 4.00 | 6.00  | -19.73    | 92.50     | 112.23    |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 7  | BV Noordkop                | 0.30 | 3.00 | 7.00  | -9.66     | 97.95     | 107.60    |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 8  | Rotterdam Basketbal        | 0.27 | 3.00 | 8.00  | -14.53    | 91.56     | 106.08    |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 9  | Basketbal Academie Limburg | 0.12 | 1.00 | 7.00  | -24.72    | 96.81     | 121.53    |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+
| 10 | BC APOLLO Amsterdam        | 0.00 | 0.00 | 10.00 | -28.25    | 89.69     | 117.94    |
+----+----------------------------+------+------+-------+-----------+-----------+-----------+



Ratings
-------

The average offensive and defensive ratings for all teams are pictured below,
in the quadrant plot descibed by Kevin Pelton in [Pelton2012]_.



::

    ## Warning: Removed 1 rows containing missing values (geom_point).



::

    ## Warning: Removed 1 rows containing missing values (geom_text).


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

    ##               Nrtg      EFGpct      ORpct       TOpct        FT4f
    ## Nrtg    1.00000000  0.67263821 0.35202128 -0.55997260  0.07807589
    ## EFGpct  0.67263821  1.00000000 0.18864241 -0.22430110  0.02484636
    ## ORpct   0.35202128  0.18864241 1.00000000  0.14138929  0.01294961
    ## TOpct  -0.55997260 -0.22430110 0.14138929  1.00000000 -0.08921888
    ## FT4f    0.07807589  0.02484636 0.01294961 -0.08921888  1.00000000



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
