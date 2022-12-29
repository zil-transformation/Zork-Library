Version 1 of Zork Commands by Alex Proudfoot begins here.

"Commands, Actions and Default Responses."


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

Carry out looking at something: try examining the noun.


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


Zork Commands ends here.

---- DOCUMENTATION ----

There will be documentation here when I have the time to write some.
