Estimating the fta factor
=========================

When estimating the number of possession,
we have to estimate:

 # The number of times a team went to the free throw line as a result of a foul,
   that wasn't preceeded by a shot. This is what I call a free throw trip.
 # The number of times a possession continued, because of an offensive rebound.

I have chosen to use an fta dactor of 0.46.
This is based on references of Oliver and in-the-game.org.

When accounting for second chance shots (after an OR),
Oliver advices to use 0.44 instead of 0.40 
to estimate the number of trips to the free throw line. I use::

  FTtrips = ftaFactor*FTA             # ftaFactor = 0.46
  
Plays are then calculated::

  plays = TO + FTtrips + (FGA + FG3A) # FGA is a 2 point field goal attempt 

And to calculate the number of posses



We'd expect the number of possessions to be within 0 to 4 of each other.
For this range, 
 

 
.. rubbric:: Footnotes

  [#Oliver] Oliver
  [#intheamge]

.. author:: default
.. categories:: none
.. tags:: none
.. comments::
