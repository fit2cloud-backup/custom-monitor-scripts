#!/bin/bash - 
#===============================================================================
#
#          FILE: threads_no.sh
# 
#         USAGE: ./threads_no.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/29/2016 09:23
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

pid=`ps aux | grep tomcat | grep -v grep | awk '{print $2}' | head -n 1`;ps -o nlwp $pid | tail -n 1 | awk '{print $1}'
echo ${pid}
