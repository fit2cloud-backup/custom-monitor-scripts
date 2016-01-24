#!/bin/bash - 
#===============================================================================
#
#          FILE: jvm-free-percent.sh
# 
#         USAGE: ./jvm-free-percent.sh 
# 
#   DESCRIPTION: JVM 堆空闲百分比
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:58
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

java -cp /bea/wlserver_10.3/server/lib/weblogic.jar weblogic.Admin -url localhost:7001 -username <YOUR_NAME> -password <YOUR_PASSWORD> GET -pretty -type JVMRuntime | awk ‘/HeapFreePercent/{print $2}’
