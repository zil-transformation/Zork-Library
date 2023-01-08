Version 1 of Zork Commands by Alex Proudfoot begins here.

"Reproduces the commands and default responses of the original game."

When play begins: now the story viewpoint is first person singular; now the story tense is present tense. 


Chapter - Commands leading to In World Actions

Section - Find

Understand "find [something]" as finding.

Finding is an action applying to one thing and requiring light.

Check finding yourself (this is the can't find yourself rule):
	say "Nothing happens." instead.

Check finding a backdrop (this is the can't find a backdrop rule):
	say "Nothing happens." instead.

Carry out finding something which is not a backdrop when the noun is in the location:
	say "There is [a noun] here.";

Carry out finding something when the noun is in a container (called the box) and the box is in the location:
	say "It is in [the box], which is here.";

Carry out finding something when the player is carrying the noun:
	say "You're holding [the noun]!"


Section - Look at

Understand the command look as something new.

Understand "look" as looking. Understand "look at" as looking.
Understand "look at [something]" as looking at.
Understand "look [something]" as looking at.
Understand "look inside/in/into/through [something]" as searching.
Understand "look under [something]" as looking under.
Understand "look up [text] in [something]" as consulting it about (with nouns reversed).

Looking at is an action applying to one visible thing and requiring light.

The looking at action has a truth state called looking at text printed.

Carry out looking at (this is the standard looking at rule):
	if the noun provides the property description and the description of the noun is not "":
		say "[description of the noun][line break]";
		now looking at text printed is true.

Carry out looking at (this is the looking at undescribed things rule):
	if looking at text printed is false:
		say "[We] [see] nothing special about [the noun]." (A).


Section - Read

Understand the command read as something new.

Understand "read [something]" as reading.
Understand "read about [text] in [something]" as consulting it about (with nouns reversed).
Understand "read [text] in [something]" as consulting it about (with nouns reversed).

Reading is an action applying to one visible thing and requiring light.

A thing can be readable. A thing is usually not readable.

Check reading something (this is the can't read if not readable rule):
	if the noun is not readable, say "How can [we] read [a noun]?" instead.

Check reading yourself (this is the can't read yourself rule):
	say "How can [we] read a cretin?" instead.

Carry out reading something:
	if the noun is not carried, try taking the noun;
	try examining the noun;


Chapter - Commands leading to Out of World Actions

Section - Noobj

Understand "noobj" as room locale description toggling.

Room locale description toggling is an action out of world and applying to nothing.

Room locale description enabled is a truth state that varies. Room locale description enabled is initially true.

Check room locale description toggling when room locale description enabled is true:
	now room locale description enabled is false;
	say "Don't print objects.";
	stop the action;

Check room locale description toggling when room locale description enabled is false:
	now room locale description enabled is true;
	say "Print objects.";
	stop the action;


Section - Quit

Carry out quitting the game (this is the say player statistics before quitting rule): say player statistics.
The quit the game rule response (A) is "Do you wish to leave the game? (Y is affirmative):[line break] ".


Section - Restart

Carry out restarting the game (this is the say player statistics before restarting rule): say player statistics.
The restart the game rule response (A) is "Do you wish to restart? (Y is affirmative):[line break] ".


Section - Restore


Section - Rname


Section - Save


Section - Score


Section - Script


Section - Super


Section - Time


Section - Unscript


Section - Version


Section - Verbose


Chapter - Commands leading to Parser Errors

Section - Unknown Words

Include Unknown Word Error by Mike Ciul.

Rule for printing a parser error when the latest parser error is the noun did not make sense in that context error (this is the noun makes no sense here rule):
	Let N be the position of non-dictionary word;
	if N is zero:
		make no decision;
	say "I don't know the word ['][word at position N]['].";
	restore oops from;

To decide what number is the/-- position of non-dictionary verb: (- FindUnknownWordToken(1) -)

Rule for printing a parser error when the latest parser error is the not a verb I recognise error (this is the don't know that verb rule):
	Let N be the position of non-dictionary verb;
	if N is zero:
		say "I can't see that here.";
		stop the action;
	say "I don't know the word ['][word at position N]['].";
	restore oops from;


Section - Out of Scope Nouns

Understand "[something]" as examining.

Understand "examine [anything]" as examining.
Check examining when the noun is not in the location: say "[We] [can't] see any [noun] here." instead.


Chapter - Command Support Phrasebook

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


Zork Commands ends here.

---- DOCUMENTATION ----

There will be documentation here when I have the time to write some.
