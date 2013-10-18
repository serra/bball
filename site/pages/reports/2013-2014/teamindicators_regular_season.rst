


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.


.. todo::

  Add a header:
  
   * date of last analyzed games
   * number of games analyzed
   * team summary should contain W/L, win pct, median Ortg, Drtg, Nrtg
   * format tables


2013-2014 Regular season
====================================================

Results
-------

The following teams are in this competition:


+----+---------------------------+------+------+------+--------+--------+--------+
|    | plg_Name                  | pct  | W    | L    | Nrtg   | Ortg   | Drtg   |
+====+===========================+======+======+======+========+========+========+
| 1  | BS Leiden                 | 1.00 | 1.00 | 0.00 | 8.45   | 97.18  | 88.73  |
+----+---------------------------+------+------+------+--------+--------+--------+
| 2  | BV Aris                   | 1.00 | 1.00 | 0.00 | 12.99  | 103.90 | 90.91  |
+----+---------------------------+------+------+------+--------+--------+--------+
| 3  | Den Helder Kings Noordkop | 1.00 | 1.00 | 0.00 | 9.09   | 124.24 | 115.15 |
+----+---------------------------+------+------+------+--------+--------+--------+
| 4  | Dukes Unlimited           | 1.00 | 1.00 | 0.00 | 21.74  | 107.25 | 85.51  |
+----+---------------------------+------+------+------+--------+--------+--------+
| 5  | Landstede Basketbal       | 1.00 | 1.00 | 0.00 | 9.86   | 105.63 | 95.77  |
+----+---------------------------+------+------+------+--------+--------+--------+
| 6  | BC APOLLO A'dam           | 0.00 | 0.00 | 1.00 | -12.99 | 90.91  | 103.90 |
+----+---------------------------+------+------+------+--------+--------+--------+
| 7  | Basketball Stars Weert    | 0.00 | 0.00 | 1.00 | -21.74 | 85.51  | 107.25 |
+----+---------------------------+------+------+------+--------+--------+--------+
| 8  | GasTerra Flames           | 0.00 | 0.00 | 1.00 | -8.45  | 88.73  | 97.18  |
+----+---------------------------+------+------+------+--------+--------+--------+
| 9  | Matrixx Magixx            | 0.00 | 0.00 | 1.00 | -9.86  | 95.77  | 105.63 |
+----+---------------------------+------+------+------+--------+--------+--------+
| 10 | Rotterdam Basketbal       | 0.00 | 0.00 | 1.00 | -9.09  | 115.15 | 124.24 |
+----+---------------------------+------+------+------+--------+--------+--------+




Ratings
-------



::

    ## Warning: Removed 2 rows containing missing values (geom_point). Warning:
    ## Removed 2 rows containing missing values (geom_text).


.. figure:: figure/rating-quadrant.png
    :alt: 

    



.. figure:: figure/net-rating.png
    :alt: 

    



.. figure:: figure/off-rating.png
    :alt: 

    



.. figure:: figure/def-rating.png
    :alt: 

    



Four Factors
------------

The net rating is plotted against all "four factors"
for all games in this competition.
These plots show us how each of the four factors influences the net rating.
Because we can assume the net rating to be the best indicator of actually winning games,
these plots show how and how strongly each of the four factor contribute to winning basketball games in the DBL in this season. 


.. figure:: figure/net-rating-by-four-factor.png
    :alt: 

    


The correlation matrix for the four factors and the net rating is displayed below:



::

    ##           Nrtg   EFGpct    ORpct     TOpct  FTTpct
    ## Nrtg    1.0000 0.302471  0.25018 -0.577265  0.1937
    ## EFGpct  0.3025 1.000000  0.02326  0.000959  0.4659
    ## ORpct   0.2502 0.023264  1.00000 -0.154827 -0.1096
    ## TOpct  -0.5773 0.000959 -0.15483  1.000000  0.4738
    ## FTTpct  0.1937 0.465948 -0.10958  0.473796  1.0000



