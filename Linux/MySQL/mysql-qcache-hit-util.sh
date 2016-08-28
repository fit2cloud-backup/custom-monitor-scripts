#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-qcache-hit-util.sh
# 
#         USAGE: ./mysql-qcache-hit-util.sh 
# 
#   DESCRIPTION: MySQL查询缓存命中率
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:26
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQLADMIN=`which mysqladmin` 
MYSQL_USER=root
MYSQL_PWD=quvideo

Qcache_queries=`${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD} extended-status | grep Qcache_queries_in_cache | cut -d "|" -f3` 
Qcache_hits=`${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD} extended-status | grep Qcache_hits | cut -d "|" -f3` 
if [ $Qcache_queries -eq 0 ];then
    echo 0
Else
    Qcache_hits_percent=$(echo "scale=2;$Qcache_hits/$Qcache_queries*100" | bc)
    echo $Qcache_percent
fi
