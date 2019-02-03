#!/bin/sh
rm /usr/bin/Xtightvnc
ln -s /opt/linux_on_dex/usr/bin/Xtightvnc /usr/bin/Xtightvnc

if [ ! -f /usr/bin/vncserver.modified ]
then
  cp /usr/bin/vncserver /usr/bin/vncserver.modified
fi
rm /usr/bin/vncserver
ln -s /usr/bin/vncserver.modified /usr/bin/vncserver

sed '0,/SRVTYPE=wrapped_tight/{s/SRVTYPE=wrapped_tight/#SRVTYPE=wrapped_tight}' /etc/init.d/vnc.sh
sed '0,/#SRVTYPE=wrapped_tiger/{s/#SRVTYPE=wrapped_tiger/SRVTYPE=wrapped_tiger}' /etc/init.d/vnc.sh
#sed '' /etc/init.d/vnc.sh 
