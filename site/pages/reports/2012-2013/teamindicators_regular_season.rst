


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2012-2013 Regular season
====================================================

Teams
-----

The following teams are in this competition:



::

    ##    plg_ID                  plg_Name
    ## 1    1771       Landstede Basketbal
    ## 2    2393            Matrixx Magixx
    ## 3    2571    Basketball Stars Weert
    ## 4    2823                      EBBC
    ## 5    3103       Rotterdam Basketbal
    ## 6    3107                 BS Leiden
    ## 7    3138                   BV Aris
    ## 8    3520 Den Helder Kings Noordkop
    ## 9    8594           GasTerra Flames
    ## 10  10757           BC APOLLO A'dam





Ratings
-------


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

    ##           Nrtg   EFGpct  ORpct    TOpct  FTTpct
    ## Nrtg    1.0000  0.60587 0.4942 -0.22099 0.11939
    ## EFGpct  0.6059  1.00000 0.2064 -0.10716 0.01536
    ## ORpct   0.4942  0.20640 1.0000  0.12402 0.01910
    ## TOpct  -0.2210 -0.10716 0.1240  1.00000 0.03972
    ## FTTpct  0.1194  0.01536 0.0191  0.03972 1.00000



