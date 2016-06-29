#!/bin/bash - 
#===============================================================================
#
#          FILE: request_in_min.sh
# 
#         USAGE: ./request_in_min.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/29/2016 09:16
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

NGINX_LOG_PATH=/data/opt/nginx/logs/w_api_xiaoying.log
NGINX_OFFSET=/var/fit2cloud/w_api_ngx_req_error
curr_req=`c1  $NGINX_LOG_PATH | wc -l`
if [ -f $NGINX_OFFSET ];then
        last_req=`cat $NGINX_OFFSET | head -1`
else
        last_req=$curr_req
fi
req_in_min=`expr $curr_req - $last_req`
echo $curr_req > $NGINX_OFFSET
echo $req_in_min|grep -Eq '^-[0-9]+$' && echo 0||echo $req_in_min
