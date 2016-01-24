#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-index-key-request.sh
# 
#         USAGE: ./mysql-index-key-request.sh 
# 
#   DESCRIPTION: MySQL索引读取统计
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:28
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQLADMIN=`which mysqladmin`
MYSQL_USER=root
MYSQL_PWD=quvideo

${MYSQLADMIN} -u${MYSQL_USER} -p${MYSQL_PWD} extened-status | grep Key_read_requests | cut -d "|" -f3
