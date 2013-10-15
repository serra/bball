

::

    options(width = 75)
    # do not use the sourcecode directive
    render_rst(strict = TRUE)
    
    # global chunk options
    opts_chunk$set(fig.width = 7.5, fig.height = 5, echo = false)



::

    ## Error: object 'false' not found





Regular season
==============

This report gives a global overview of the competition.
It is not specific to any team.

Teams
-----



::

    teams <- sqldf("select plg_ID, plg_Name from regseasTeam group by plg_ID, plg_Name")
    teams



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



::

    nrtgByTeamPlot(regseasTeam)


.. figure:: figure/net-rating.png
    :alt: Net Ratings

    Net Ratings




::

    OrtgByTeamPlot(regseasTeam)


.. figure:: figure/off-rating.png
    :alt: Net Ratings

    Net Ratings




::

    drtgByTeamPlot(regseasTeam)


.. figure:: figure/def-rating.png
    :alt: Net Ratings

    Net Ratings

