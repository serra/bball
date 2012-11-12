Estimating the number of possessions
====================================

When estimating the number of possession,
we have to estimate:

 # The number of times a team went to the free throw line as a result of a foul,
   that wasn't preceeded by a shot. This is what I call a free throw trip.
 # The number of times a possession continued, because of an offensive rebound.

I have chosen to use an fta dactor of 0.46, 
based on references of Oliver [#Oliver]_ and in-the-game.org [#inthegame]_.

When accounting for second chance shots (after an OR),
Oliver advices to use 0.44 instead of 0.40 
to estimate the number of trips to the free throw line. I use::

  FTtrips = ftaFactor*FTA             # ftaFactor = 0.46
  
Plays are then calculated::

  plays = TO + FTtrips + (FG2A + FG3A)

And to calculate the number of possessions, 
we have to subtract the number of plays that occured after an offensive rebound
[#Oliver]_:

  # secondChanceFactor = 1.07
  ps = plays - secondChanceFactor * (FG2A + FG3A - FG2M - FG3M) * OR / (OR + opp_DR)

The `secondChanceFactor` is a bit higher than one,
because some offensive rebounds (approximately 7 percent) 
occur after another offensive rebound in the same possession.


 
.. rubbric:: Footnotes

  [#Oliver] Oliver
  [#inthegame] http://www.in-the-game.org/?page_id=10227

.. author:: default
.. categories:: none
.. tags:: none
.. comments::
