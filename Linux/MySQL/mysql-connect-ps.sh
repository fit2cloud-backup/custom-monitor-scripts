#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-connect-ps.sh
# 
#         USAGE: ./mysql-connect-ps.sh 
# 
#   DESCRIPTION: MySQL连接吞吐率
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:28
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQL=`which mysql`
MYSQL_USER=root
MYSQL_PWD=quvideo
MYSQL_LAST_CONNECTED=/var/fit2cloud/mysql_last_connected

current_connected=`${MYSQL} -u${MYSQL_USER} -p${MYSQL_PWD} -e 'show status like "Threads_connected"' | sed 1d | awk '{print $NF}'`
if [ -f $MYSQL_LAST_CONNECTED ];then
    last_connected=`cat $MYSQL_LAST_CONNECTED | head -1`
else
    last_connected=$current_connected
fi
echo $current_connected > $MYSQL_LAST_CONNECTED
speed=`expr $current_connected - $last_connected`
speed=${speed#-}
speed=$(echo "scale=2;$speed / 60" | bc )
echo $speed

