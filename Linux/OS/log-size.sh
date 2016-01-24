#!/bin/bash - 
#===============================================================================
#
#          FILE: log-size.sh
# 
#         USAGE: ./log-size.sh 
# 
#   DESCRIPTION: Log 大小
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 15:01
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

ls -l  /var/log/*.log /var/log/*.out /var/log/*.swp 2>/dev/null | awk '{sum+=$5} END {print sum}' 

