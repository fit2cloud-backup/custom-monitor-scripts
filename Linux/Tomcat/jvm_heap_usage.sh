#!/bin/bash - 
#===============================================================================
#
#          FILE: jvm_heap_usage.sh
# 
#         USAGE: ./jvm_heap_usage.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/29/2016 09:24
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

java -jar cmdline-jmxclient-0.10.3.jar - localhost:8090 java.lang:type=Memory HeapMemoryUsage 2>&1 | grep used | awk '{print $2}'
