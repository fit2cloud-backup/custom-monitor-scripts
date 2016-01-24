#!/bin/bash - 
#===============================================================================
#
#          FILE: http-concurrency-num.sh
# 
#         USAGE: ./http-concurrency-num.sh 
# 
#   DESCRIPTION: 查看http的并发请求数
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

netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}' | grep ESTABLISHED | awk '{print $2}' 

