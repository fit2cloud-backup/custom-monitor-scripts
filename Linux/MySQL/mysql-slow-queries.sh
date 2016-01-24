#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-slow-queries.sh
# 
#         USAGE: ./mysql-slow-queries.sh 
# 
#   DESCRIPTION: 慢查询个数
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:32
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQLADMIN=`which mysqladmin`
MYSQL_USER=root
MYSQL_PWD=quvideo

${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD} status | cut -f5 -d":"|cut -f1 -d"O"
