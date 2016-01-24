#!/bin/bash - 
#===============================================================================
#
#          FILE: server-thread-status.sh
# 
#         USAGE: ./server-thread-status.sh 
# 
#   DESCRIPTION: Server Threads 状态
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

java -cp /bea/wlserver_10.3/server/lib/weblogic.jar weblogic.Admin -url localhost:7001 -username <YOUR_NAME> -password <YOUR_PASSWORD> GET -pretty -type ServerRuntime | grep HealthState | grep HEALTH_OK | wc -l
