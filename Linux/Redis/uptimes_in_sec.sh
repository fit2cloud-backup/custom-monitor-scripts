#!/bin/bash - 
#===============================================================================
#
#          FILE: uptimes_in_sec.sh
# 
#         USAGE: ./uptimes_in_sec.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/01/16 23:04
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

redis-cli info | grep uptime_in_seconds | cut -d ":" -f 2
