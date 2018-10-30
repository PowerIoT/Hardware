#!/bin/bash
mkdir camera
for i in {1...100}
do
UNIX_TIME=$(date +%s)
if (( $UNIX_TIME % 60 == 0 ))
then
raspistill -vf -hf -o /home/pi/camera/$UNIX_TIME.jpg
fi
sleep 1
done
