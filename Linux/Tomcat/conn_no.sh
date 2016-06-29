#!/bin/bash - 
#===============================================================================
#
#          FILE: conn_no.sh
# 
#         USAGE: ./conn_no.sh 
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

netstat -na | grep ESTAB | grep 80 | wc -l
