#!/bin/bash
export DOTY="https://raw.githubusercontent.com/anzclan/HAPROXY/main"
echo -e "$BLUE│$NC  $INFO Remove Old Data"
sleep 1
echo -e "$BLUE│$NC  $INFO Download Update Data.."
sleep 1
wget -q -O /usr/local/sbin/menu "DOTY/panel/menu" && chmod +x /usr/local/sbin/menu
wget -q -O /usr/local/sbin/xp "DOTY/panel/ssh" && chmod +x /usr/local/sbin/ssh
wget -q -O /usr/local/sbin/xp "DOTY/panel/xp" && chmod +x /usr/local/sbin/xp
sleep 2
echo -e "$BLUE│$NC  $INFO Update CronTab Data.."
sleep 2
echo "0 1 * * * root /sbin/reboot" >> /etc/crontab
echo "0 */2 * * * root /usr/local/sbin/bot" >> /etc/crontab
echo "0 0 * * * root /usr/local/sbin/xp" >> /etc/crontab
echo -e "$BLUE│$NC  $INFO Update Successfully"
sleep 1
