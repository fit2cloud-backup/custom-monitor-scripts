#!/bin/bash - 
#===============================================================================
#
#          FILE: network-connection.sh
# 
#         USAGE: ./network-connection.sh 
# 
#   DESCRIPTION: 查看当前网络链接数
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION:
#       CREATED: 01/24/2016 15:00
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq | wc -l 

