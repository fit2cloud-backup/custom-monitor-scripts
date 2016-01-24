#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-table-lock.sh
# 
#         USAGE: ./mysql-table-lock.sh 
# 
#   DESCRIPTION: MySQL表统计锁定
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:31
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQL=`which mysql`
MYSQL_USER=root
MYSQL_PWD=quvideo

${MYSQL} -u${MYSQL_USER} -p${MYSQL_PWD} -e 'show status like "Table_locks_waited"' | sed 1d | awk '{print $NF}'
