#!/bin/bash - 
#===============================================================================
#
#          FILE: eden_space_usage.sh
# 
#         USAGE: ./eden_space_usage.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/29/2016 09:24
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

pid=`ps -ef | grep tomcat | grep -v | awk ‘{print $2}’`
/usr/java/default/bin/jmap -heap $pid | grep "% used" | head -n 1 | awk '{print substr($1,0,4)}' 
