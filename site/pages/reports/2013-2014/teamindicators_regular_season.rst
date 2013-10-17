


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2013-2014 Regular season
====================================================

Teams
-----

The following teams are in this competition:



::

    ##    plg_ID                  plg_Name
    ## 1    1771       Landstede Basketbal
    ## 2    2393            Matrixx Magixx
    ## 3    2571    Basketball Stars Weert
    ## 4    3103       Rotterdam Basketbal
    ## 5    3107                 BS Leiden
    ## 6    3138                   BV Aris
    ## 7    3520 Den Helder Kings Noordkop
    ## 8    8594           GasTerra Flames
    ## 9   10757           BC APOLLO A'dam
    ## 10  11480           Dukes Unlimited





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

The net rating is plotted against all "four factors"" 
for all games in this competition.
These plots show us how each of the four factors influences the net rating.
Because we can assume the net rating to be the best indicator of actually winning games,
these plots show ho and how strongly each of the four factor contribute to winning basketball games in the DBL in this season. 


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



