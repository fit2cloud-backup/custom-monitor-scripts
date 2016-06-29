#!/bin/bash - 
#===============================================================================
#
#          FILE: 200_request_in_min.sh
# 
#         USAGE: ./200_request_in_min.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/29/2016 09:21
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

NGINX_LOG_PATH=/data/opt/nginx/logs/g_api_xiaoying_http.log
NGINX_OFFSET=/var/fit2cloud/g_api_ngx_req_error
curr_req=`cat $NGINX_LOG_PATH | grep -v ", 200," | wc -l`
if [ -f $NGINX_OFFSET ];then
    last_req=`cat $NGINX_OFFSET | head -1`
else
    last_req=$curr_req
fi
req_in_min=`expr $curr_req - $last_req`
echo $curr_req > $NGINX_OFFSET
echo $req_in_min
