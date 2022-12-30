Version 1 of Zork Presentation by Alex Proudfoot begins here.

"Adds an Infocom-style presentation to the game."


Section - Status Bar Style

Include Basic Screen Effects by Emily Short.

Table of Status
left	central	right 
" [location]"	""	"Score: [score]       Moves: [move count]"

To decide which number is the move count:
	if the story has not ended:
		decide on the turn count - 1;
	otherwise:
		decide on the turn count;

Rule for constructing the status line:
	fill the status bar with the Table of Status;
	the rule succeeds.

When play begins: now the right alignment depth is 30.


Section - Room Description Style

Printing the room-description of something is an activity.

Rule for printing the room-description of a room (called the place):
	if the description of the place is not "":
		say the description of the place;
	otherwise:
		do nothing instead.

The activity-based room description body text rule is listed instead of the room description body text rule in the carry out looking rules.

This is the activity-based room description body text rule:
	if the visibility level count is 0:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated	room descriptions and
			abbreviated form allowed is true and
			darkness witnessed is true,
			continue the action;
		begin the printing the description of a dark room activity;
		if handling the printing the description of a dark room activity:
			now the prior named object is nothing;
			say "[It] [are] pitch dark, and [we] [can't see] a thing." (A);
		end the printing the description of a dark room activity;
	otherwise if the visibility ceiling is the location:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated	room descriptions and abbreviated form
			allowed is true and the location is visited, continue the action;
		carry out the printing the room-description activity with the location.

After looking, say "".


Section - Room Description Level

Use BRIEF room descriptions.

Report preferring unabbreviated room descriptions (this is the report preferring unabbreviated room descriptions rule):
	say "Maximum verbosity." instead.

Report preferring sometimes abbreviated room descriptions (this is the report preferring sometimes abbreviated room descriptions rule):
	say "Brief descriptions." instead.

Report preferring abbreviated room descriptions (this is the report preferring abbreviated room descriptions rule):
	say "No long descriptions." instead.


Section - Room Locale Description Style

A thing has a text called subsequent appearance.

Rule for writing a paragraph about something not handled (called the item):
	if the initial appearance of the item is not "":
		say the initial appearance of the item;
	else if the subsequent appearance of the item is not "":
		say the subsequent appearance of the item;
	else:
		say "There is [an item] here.[no line break]";

Rule for writing a paragraph about something handled (called the item):
	if the subsequent appearance of the item is not "":
		say the subsequent appearance of the item;
	else:
		say "There is [an item] here.[no line break]";

Rule for writing a paragraph about an open container (called the box) when the box contains something:
	if the initial appearance of the box is not "":
		say the initial appearance of the box;
	else if the subsequent appearance of the box is not "":
		say the subsequent appearance of the box;
	else:
		say "There is [a box] here.";
	say "[The box] contains:";
	repeat with item running through the list of things in the box:
		say line break;
		say "  [a item]";


Section - Room Locale Description Level

Rule for printing the locale description of a room when room locale description enabled is false and the player's command does not match "look": do nothing.


Zork Presentation ends here.

---- DOCUMENTATION ----

This extension implements an Infocom-style presentation.
