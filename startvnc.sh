#!/bin/sh

rm /usr/bin/Xtightvnc
ln -s /usr/bin/Xtightvnc.original /usr/bin/Xtightvnc

if [ ! -f /usr/bin/vncserver.modified ]
then
  cp /usr/bin/vncserver /usr/bin/vncserver.modified
fi
rm /usr/bin/vncserver
ln -s /usr/bin/vncserver.original /usr/bin/vncserver

sed -i '/#SRVTYPE=wrapped_tight/,/#SRVTYPE=wrapped_tight/{s/#SRVTYPE=wrapped_tight/SRVTYPE=wrapped_tight/}' /etc/init.d/vnc.sh
sed -i '/SRVTYPE=wrapped_tiger/,/SRVTYPE=wrapped_tiger/{s/^SRVTYPE=wrapped_tiger/#SRVTYPE=wrapped_tiger/}' /etc/init.d/vnc.sh
sed -i '/wrapped_tight)/,/sudo/{s/-localhost //}' /etc/init.d/vnc.sh

GEOMETRY=${1:-2560x1800}
$DPI=${2:-308}

/etc/init.d/vnc.sh $GEOMETRY $DPI
