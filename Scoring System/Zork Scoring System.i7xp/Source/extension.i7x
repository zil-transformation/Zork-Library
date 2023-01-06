Version 1 of Zork Scoring System by Alex Proudfoot begins here.

"Reproduces the scoring system of the original game."

Use scoring.
The maximum score is 616.

When play begins: try silently switching score notification off.


Section - Points for Room Discovery

A room has a number called discovery points. The discovery points are usually 0.

Check going when the room gone to is a room and the discovery points of the room gone to are not 0 (this is the award points for room discovery rule):
	if the room gone to is not visited, now the score is the score plus the discovery points of the room gone to.


Section - Points for Treasure Taking

A thing has a number called taking points. The taking points are usually 0.

Check taking when the taking points of the noun are not 0 (this is the award points for treasure taking rule):
	if the noun is not handled, now the score is the score plus the taking points of the noun.


Section - Points for Treasure Hoarding

A thing has a number called hoarding points. The hoarding points are usually 0.

Check inserting into the trophy case when the hoarding points of the noun are not 0 (this is the award points for treasure hoarding rule):
	now the score is the score plus the hoarding points of the noun.

Check removing from the trophy case when the hoarding points of the noun are not 0 (this is the remove points for treasure unhoarding rule):
	now the score is the score minus the hoarding points of the noun.


Zork Scoring System ends here.

---- DOCUMENTATION ----

This extension activates Inform 7 scoring, sets the maximum score for the game and implements Points for Room Discovery, Points for Treasure Taking and Points for Treasure Hoarding.
