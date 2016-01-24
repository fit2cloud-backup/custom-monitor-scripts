#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-qps.sh
# 
#         USAGE: ./mysql-qps.sh 
# 
#   DESCRIPTION: MySQL 每秒查询数, 即查询吞吐率
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:16
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQL=`which mysql`
MYSQL_USER=root
MYSQL_PWD=c7a66933
MYSQL_LAST_QUERIES=/var/fit2cloud/mysql_last_queries

current_queries=`${MYSQL} -u${MYSQL_USER} -p${MYSQL_PWD} -e "show status like 'Queries'\G" | sed 1,2d | cut -d: -f2`
if [ -f $MYSQL_LAST_QUERIES ];then
    last_queries=`cat $MYSQL_LAST_QUERIES | head -1`
else
    last_queries=$current_queries
fi
echo $current_queries > $MYSQL_LAST_QUERIES
speed=`expr $current_queries - $last_queries`
speed=${speed#-}
speed=$(echo "scale=2;$speed / 60" | bc )
echo $speed
