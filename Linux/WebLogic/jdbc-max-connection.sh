#!/bin/bash - 
#===============================================================================
#
#          FILE: jdbc-max-connection.sh
# 
#         USAGE: ./jdbc-max-connection.sh 
# 
#   DESCRIPTION: JDBC 最高连接数
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kris
#  ORGANIZATION: 
#       CREATED: 01/24/2016 14:57
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

java -cp /bea/wlserver_10.3/server/lib/weblogic.jar weblogic.Admin -url localhost:7001 -username <YOUR_NAME> -password <YOUR_PASSWORD> GET -pretty -mbean “base_domain:ServerRuntime=AdminServer,Name=sispDS,Type=JDBCConnectionPoolRuntime,Location=AdminServer” | awk ‘/ActiveConnectionsHighCount/{print $2}’
