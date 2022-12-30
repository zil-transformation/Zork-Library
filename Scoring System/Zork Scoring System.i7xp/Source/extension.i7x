Version 1 of Zork Scoring System by Alex Proudfoot begins here.

"Reproduces the scoring system of the original game."

Use scoring.
The maximum score is 616.

When play begins: try silently switching score notification off.


Section - Points for Room Discovery

A room has a number called discovery points. The discovery points are usually 0.
Check going when the discovery points of the room gone to are not 0 (this is the award points for room discovery rule):
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


Section - Reporting Player Statistics

To say player statistics:
	say "Your score [if story has ended]is[else]would be[end if] [score] [bracket]total of [maximum score] points[close bracket], in [move count] moves.";
	say "This score gives you the rank of [player ranking].";

To say player ranking:
	repeat through the table of rankings in reverse score order:
		if the score is at least the score entry:
			say the rank entry;
			the rule succeeds;

Table of Rankings
Score	Rank
-31	"Incompetent"
0	"Beginner"
31	"Amateur Adventurer"
62	"Novice Adventurer"
123	"Junior Adventurer"
246	"Adventurer"
370	"Hacker"
493	"Winner"
554	"Master"
585	"Wizard"
616	"Cheater"
641	"Advanced Cheater"
666	"Master Cheater"
691	"Super Cheater"
716	"Dungeon Master"


Zork Scoring System ends here.

---- DOCUMENTATION ----

There will be documentation here when I have the time to write some.
