twic_update
===========

A bash script for updating a Scid database with the newest games from The Week in Chess


This script downloads the newest group of games from www.theweekinchess.com and enters them into a scid database. It can be used with cron to automatically keep your database current. 
It also keeps a copy of each week's games in a seperate folder. These aren't needed for the database to function but may be of interest. They also provide evidence of which weeks have been downloaded.


By default, twic-update uses the directory ~/Chess, a database called Database, and drops pgns into the directory ~/Chess/TWIC. These must exist for the script to function. They can be changed by editing lines 3-6 in twic_update.sh

twic_update requires curl and (obviously) scid.
