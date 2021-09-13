#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp  /tmp/.auth root@10.120.102.123:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish root@10.120.102.123:/tmp/publish
ssh root@10.120.102.123 "/tmp/publish"
