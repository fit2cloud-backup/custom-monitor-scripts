#!/bin/bash - 
#===============================================================================
#
#          FILE: connected_client.sh
# 
#         USAGE: ./connected_client.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/01/16 23:03
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

redis-cli info | grep connected_clients | cut -d ":" -f 2
