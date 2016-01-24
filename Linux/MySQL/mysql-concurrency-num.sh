#!/bin/bash - 
#===============================================================================
#
#          FILE: mysql-concurrency-num.sh
# 
#         USAGE: ./mysql-concurrency-num.sh 
# 
#   DESCRIPTION: MySQL并发连接数，包括最大允许连接数、实际最大连接数、当前连接数、活跃连接数、缓存连接数
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:29
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

MYSQL=`which mysql`
MYSQL_USER=root
MYSQL_PWD=quvideo

${MYSQL} -u${MYSQL_USER} -p${MYSQL_PWD} -e 'show status like "Threads_connected"' | sed 1d | awk '{print $NF}'
