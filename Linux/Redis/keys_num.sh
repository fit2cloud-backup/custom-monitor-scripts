#!/bin/bash - 
#===============================================================================
#
#          FILE: keys_num.sh
# 
#         USAGE: ./keys_num.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/01/16 23:12
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

redis-cli info | grep db0:keys | cut -d ":" -f 2 | cut -d "=" -f 2 | cut -d "," -f 1
