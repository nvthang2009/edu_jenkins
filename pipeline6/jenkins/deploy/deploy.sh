#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp  /tmp/.auth root@192.168.111.137:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish root@192.168.111.137:/tmp/publish
ssh root@192.168.111.137 "/tmp/publish"
