#!/bin/bash
 cat /etc/fstab |grep mnt
 echo tmpfs       /mnt tmpfs   size=100M   0 0 >>/etc/fstab
 mount -a
echo -e '[[inputs.exec]]\r\n commands = ["sh /usr/local/tele_apache.sh"]\r\n timeout = "5s"\r\n data_format = "influx"' >>/etc/telegraf/telegraf.conf
 service telegraf restart
 rm -Rvf apache.sh
 cat /etc/fstab
 cd /mnt
 ls -lhtr
