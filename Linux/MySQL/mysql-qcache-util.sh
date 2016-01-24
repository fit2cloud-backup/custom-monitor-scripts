#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-qcache-util.sh
# 
#         USAGE: ./mysql-qcache-util.sh 
# 
#   DESCRIPTION: MySQL查询缓存空间使用率
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:21
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQLADMIN=`which mysqladmin`
MYSQL_USER=root
MYSQL_PWD=c7a66933

Qcache_total=`${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD} extended-status | grep Qcache_total_blocks | cut -d "|" -f3`
Qcache_free=`${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD} extended-status | grep Qcache_free_blocks | cut -d "|" -f3`

if [ $Qcache_total -eq 0 ];then
    echo 0
else
    Qcache_used=`expr $Qcache_total - $Qcache_free`
    Qcache_percent=$(echo "scale=2;$Qcache_used/$Qcache_total*100" | bc)
    echo $Qcache_percent
