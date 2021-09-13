#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u thangnv -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG thangnv/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push thangnv/$IMAGE:$BUILD_TAG
