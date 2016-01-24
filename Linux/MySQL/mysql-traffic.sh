#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-traffic.sh
# 
#         USAGE: ./mysql-traffic.sh 
# 
#   DESCRIPTION: MySQL流量统计
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:30
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQLADMIN=`which mysqladmin`
MYSQL_USER=root
MYSQL_PWD=c7a66933
MYSQL_LAST_TRAFFIC=/var/fit2cloud/mysql_last_traffic


Bytes_sent=`${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD}  extended-status |grep -w "Bytes_sent" |cut -d"|" -f3`
Bytes_received=`${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD} extended-status |grep -w "Bytes_received" |cut -d"|" -f3` 
Traffic_in_bytes=`expr $Bytes_sent + $Bytes_received`

if [ -f $MYSQL_LAST_TRAFFIC ];then
    last_traffic=`cat $MYSQL_LAST_TRAFFIC | head -1`
else
    last_traffic=$Traffic_in_bytes
fi
echo $Traffic_in_bytes > $MYSQL_LAST_TRAFFIC
traffic_diff=$(echo "scale=2;($Traffic_in_bytes - $last_traffic)/1048576" | bc)
echo $traffic_diff
