


..
  Assumptions
  season      : srting identifier of the season we're evaluating
  regseasTeam : dataframe containing the team statistics
  ReportTeamRatings.r is sourced.

2010-2011 Regular season
====================================================

Teams
-----

The following teams are in this competition:



::

    ##    plg_ID               plg_Name
    ## 1    1771    Landstede Basketbal
    ## 2    2393         Matrixx Magixx
    ## 3    2571 Basketball Stars Weert
    ## 4    2823                   EBBC
    ## 5    3103    Rotterdam Basketbal
    ## 6    3107              BS Leiden
    ## 7    3120          ABC Amsterdam
    ## 8    3138                BV Aris
    ## 9    6115         Giants Academy
    ## 10   8594        GasTerra Flames





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

    ##            Nrtg   EFGpct   ORpct    TOpct   FTTpct
    ## Nrtg    1.00000  0.58063 0.39175 -0.24349 -0.01473
    ## EFGpct  0.58063  1.00000 0.04961 -0.06826 -0.03637
    ## ORpct   0.39175  0.04961 1.00000  0.08502  0.05895
    ## TOpct  -0.24349 -0.06826 0.08502  1.00000  0.03402
    ## FTTpct -0.01473 -0.03637 0.05895  0.03402  1.00000


