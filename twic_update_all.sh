#!/bin/bash

DIRECTORY="~/Chess"
DATABASE="Database"
SAVEDIRECTORY="TWIC"

# The temporary name of downloaded file

TEMP=/tmp/twic.zip

# The latest week number for which a pgn file has been published
LAST_WEEK=`curl -s http://www.theweekinchess.com/twic | grep -m 1 g\.zip | sed 's/^.*twic//' | sed 's/g\.zip.*//'`

clear

for WEEK_NUM in `seq 920 $LAST_WEEK`

do

echo "Getting TWIC  #$WEEK_NUM from www.theweekinchess.com/twic"
echo

#Gets file from online
curl -o $TEMP "http://www.theweekinchess.com/zips/twic"$WEEK_NUM"g.zip" 

#Unzips file
unzip $TEMP -d /tmp

#adds to SCID
sc_import "$DIRECTORY/$DATABASE" "/tmp/twic$WEEK_NUM.pgn"

#cleanup
rm $TEMP
mv "/tmp/twic$WEEK_NUM.pgn" "$DIRECTORY/$SAVEDIRECTORY"

done

