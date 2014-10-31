dwmstatusH
==========

dwmstatusH is a port of dwmstatus from C into Haskell

Project Inspiration
------------------

For anyone who doesn't know, dwmstatus is an extremely lightweight status bar
intended to accompany the dwm window manager. Dwmstatus was originally coded by
Christoph Lohmann (20h@r-36.net) and can be found at 
http://git.suckless.org/dwmstatus. Many thanks to Christoph for writing a very
nice, elegant status bar in C with extremely clear code. His work directly
inspired mine. If dwmstatusH does not meet your needs as a status bar, you might
try the original dwmstatus.


Project Origin
---------

After one very very frustrating afternoon of trying to access the WM_NAME
property of my X11 session's rootwindow in C, I threw my hands up in frustration.
All I wanted was to get the property that was there, but no, C was extremely
uncooperative.

I decided to give it a shot in Haskell because it's pretty and much easier to
use than C or C++. After 45 to 60 minutes or so, I had achieved exactly what I
wanted in Haskell, so I decided to try my hand at porting the basic functionality
of dwmstatus from C to Haskell. Haskell's expressiveness and ability to deal with
all the pointers necessary to programme with Xlib made it a wonderful
choice for this project. 


Differences from dwmstatus
--------------------------

Several differences exist between dwmstatus and dwmstatusH.

- The language of implementation (C vs. Haskell)

- dwmstatus is right now more flexible, as it allows for the easy creation and
display of multiple time zones. Right now, dwmstatusH displays the local time
and UTC time.

- dwmstatusH is somewhat more memory intensive than dwmstatus. On my machine, it
seems to take about 1400 KB of memory, while dwmstatus comes in around 350KB.
I am not sure if I will be able to make it smaller, but for a first real prog
like this, I am overall quite pleased.

- Terms of Licensure: dwmstatus is released under the MIT/Expat licence, while
dwmstatusH is licensed under the GPLv3. As a learner and teacher, it is very
important to me that my code always be available for anyone who wants to (try 
to) learn from it, hence the GPLv3.


Other Notes
-----------

Please feel free to contact me with questions or requests for functionality.
This is mainly an experimental project, intended for my personal use in a
minimal X11 environment, such as dwm. If anyone else can make use this code,
I would love to hear about what you're doing with it!

