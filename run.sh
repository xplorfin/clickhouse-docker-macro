1#!/bin/bash

NODE_ID=$(echo $(hostname) | awk '{print substr($0,length,1)}')
echo "NODE_ID is $NODE_ID"
if test $SUFFIX; then
        sed -i "s/REPLICA_NAME/replica$NODE_ID-$SUFFIX/" /macros.xml
else
        sed -i "s/REPLICA_NAME/replica$NODE_ID/" /macros.xml
fi
cp -r /macros.xml /config.d/macros.xml
