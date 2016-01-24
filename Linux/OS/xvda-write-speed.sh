#!/bin/bash - 
#===============================================================================
#
#          FILE: xvda-write-speed.sh
# 
#         USAGE: ./xvda-write-speed.sh 
# 
#   DESCRIPTION: 查看磁盘xvda设备的瞬时写速率
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR:
#  ORGANIZATION:
#       CREATED: 01/24/2016 15:03
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

iostat -x -k | grep xvda | awk '{print $7}'
