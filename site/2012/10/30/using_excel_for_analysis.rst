Using Excel for analysis
========================

If you'd like to do some analysis using Microsoft Excel,
you can start `using the analysis.xlsx Excel document </stats>`_ 
located in the downloads section. 
This assumes you're using Excel 2010.

The document consists of three worksheets:

 * `Dashboard` with three pivot tables, as an example.
 * `TeamStatsFromWeb`, the advanced team stats, 
   used as the data source for two team pivot tables.
 * `PlayerStatsFromWeb`, advanced player stats.
   used as the data source for the scoring pviot table.

The workbook has two data connections 
that point to the online advanced stats csv files 
for the 2012-2013 DBL regular season.
To load the data from the web, you should be able to do::

  Data > Connections > Refresh All

The data in your dashboard might not immediately update;
you might have to manually refresh your pivot grids too::

  PivotTable Tools > Data > Refresh

Note that we can't calculate a median using a pivot table in Excel, 
therfore in the examples on the dashboard worksheet 
I used a simple average function.
This will calculate per-game averages,
based on the per game values in the advanced stats.


.. author:: default
.. categories:: none
.. tags:: none
.. comments::
