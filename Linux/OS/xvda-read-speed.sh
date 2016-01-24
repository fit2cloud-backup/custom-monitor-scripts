#!/bin/bash - 
#===============================================================================
#
#          FILE: xvda-read-speed.sh
# 
#         USAGE: ./xvda-read-speed.sh 
# 
#   DESCRIPTION: 查看磁盘xvda设备的瞬时读速率 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 15:03
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

iostat -x -k | grep xvda | awk '{print $6}'

