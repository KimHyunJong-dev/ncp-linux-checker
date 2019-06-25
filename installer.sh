#!/bin/bash            

PKG_URL="https://github.com/NaverCloudPlatform/ncp-linux-checker/blob/master"
PKG_VER="1.4"            
PKG_NAME="ncp-check_${PKG_VER}.sh"            
WORKING_HOME="/opt/"            

if [ -d $WORKING_HOME/vmcheck_${PKG_VER} ]; then
    rm -rf $WORKING_HOME/vmcheck_${PKG_VER} > /dev/null 2>&1            
fi
 mkdir -p $WORKING_HOME/vmcheck_${PKG_VER} > /dev/null 2>&1

sleep 1            
cd $WORKING_HOME/vmcheck_${PKG_VER} > /dev/null 2>&1
#bash <(curl -s https://kr.object.ncloudstorage.com/workspace/vmscript/ncp-check_1.4.sh)
bash <(curl -s $PKG_URL/$PKG_NAME)
exit 0