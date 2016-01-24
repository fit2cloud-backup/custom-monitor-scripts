#!/bin/bash - 
#===============================================================================
#
#          FILE: sockets-connection-num.sh
# 
#         USAGE: ./sockets-connection-num.sh 
# 
#   DESCRIPTION: Sockets 连接数量
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

java -cp /bea/wlserver_10.3/server/lib/weblogic.jar weblogic.Admin -url localhost:7001 -username <YOUR_NAME> -password <YOUR_PASSWORD> GET -pretty -type ServerRuntime |  awk ‘/OpenSocketsCurrentCount/{print $2}’
