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
MYSQL_PWD=quvideo

Bytes_sent=`${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD}  extended-status |grep -w "Bytes_sent" |cut -d"|" -f3`
Bytes_received=`${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD} extended-status |grep -w "Bytes_received" |cut -d"|" -f3` 
Traffic_in_bytes=`expr $Bytes_sent + $Bytes_received`
Traffic_in_mega=`expr $Traffic_in_bytes / 1048576`
echo $Traffic_in_mega 
