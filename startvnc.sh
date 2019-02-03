#!/bin/sh
rm /usr/bin/Xtightvnc
ln -s /usr/bin/Xtightvnc.original /usr/bin/Xtightvnc
if [ ! -f /usr/bin/vncserver.modified ]
then
  cp /usr/bin/vncserver /usr/bin/vncserver.modified
fi
rm /usr/bin/vncserver
ln -s /usr/bin/vncserver.original /usr/bin/vncserver
