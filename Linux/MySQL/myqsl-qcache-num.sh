#!/bin/bash - 
#===============================================================================
#
#          FILE: myqsl-qcache-num.sh
# 
#         USAGE: ./myqsl-qcache-num.sh 
# 
#   DESCRIPTION: MySQL缓存查询数
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:27
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQLADMIN=`which mysqladmin`
MYSQL_USER=root
MYSQL_PWD=quvideo

${MYSQLADMIN} -u${MYSQL_USER} -p{MYSQL_PWD} extended-status | grep Qcache_queries_in_cache | cut -d "|" -f3
