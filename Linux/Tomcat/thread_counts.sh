#!/bin/bash - 
#===============================================================================
#
#          FILE: thread_counts.sh
# 
#         USAGE: ./thread_counts.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/29/2016 09:25
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

java -jar cmdline-jmxclient-0.10.3.jar - localhost:8090 java.lang:type=Threading ThreadCount 2>&1 | awk '{print $NF}'
