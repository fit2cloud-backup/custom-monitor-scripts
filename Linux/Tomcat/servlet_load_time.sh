#!/bin/bash - 
#===============================================================================
#
#          FILE: servlet_load_time.sh
# 
#         USAGE: ./servlet_load_time.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/29/2016 09:26
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

java -jar cmdline-jmxclient-0.10.3.jar - localhost:8090 Catalina:J2EEApplication=none,J2EEServer=none,WebModule=//localhost/examples,j2eeType=Servlet,name=HelloWorldExample loadTime 2>&1 | awk '{print $NF}'

