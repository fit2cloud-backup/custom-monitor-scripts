i#!/bin/bash - 
#===============================================================================
#
#          FILE: used_memory_KB.sh
# 
#         USAGE: ./used_memory_KB.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/01/16 23:02
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

redis-cli info | grep used_memory_human | cut -d ":" -f 2 | cut -d K -f 1
