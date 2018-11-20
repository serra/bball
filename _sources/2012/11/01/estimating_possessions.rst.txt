Estimating the number of possessions
====================================

When estimating the number of possession,
we have to estimate:

 * The number of times a team went to the free throw line as a result of a foul,
   that wasn't preceded by a shot. This is what I call a free throw trip.
 * The number of times a possession continued because of an offensive rebound.

I have chosen to use an fta factor of 0.46, 
based on references of Oliver [#Oliver]_ and in-the-game.org [#inthegame]_.

Here are the formulas I use:

.. more::

When accounting for second chance shots (after an OR),
Oliver advices to use 0.44 instead of 0.40 
to estimate the number of trips to the free throw line. I use 0.46::

  FTtrips = ftaFactor*FTA             # ftaFactor = 0.46

I decided to use 0.46 this after some graphical exploration,
this is till arbitrary and I'm open to any feedback here.
  
Plays are then calculated::

  plays = TO + FTtrips + (FG2A + FG3A)

And to calculate the number of possessions, 
we have to subtract the number of plays that occurred after an offensive rebound
[#Oliver]_::

  # secondChanceFactor = 1.07
  ps = plays - secondChanceFactor * (FG2A + FG3A - FG2M - FG3M) * OR / (OR + opp_DR)

The `secondChanceFactor` is taken from [#Oliver]_, 
but I must say I don't really understand 
why it would be better than simply using the OR term.
If any, I'd expect this term to be less than 1, 
because some offensive rebounds occur in a possession that had an OR before,
thereby not continuing a possession.
Thoughts are appreciated.

 
.. rubric:: Footnotes

.. [#Oliver] Basketball on Paper, D. Oliver
.. [#inthegame] http://www.in-the-game.org/?page_id=10227

.. author:: default
.. categories:: none
.. tags:: none
.. comments::
