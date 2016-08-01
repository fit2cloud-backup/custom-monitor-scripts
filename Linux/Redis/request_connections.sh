#!/bin/bash - 
#===============================================================================
#
#          FILE: request_connections.sh
# 
#         USAGE: ./request_connections.sh 
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

redis-cli info | grep total_connections_received | cut -d ":" -f 2
