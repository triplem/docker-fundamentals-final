#!/bin/sh
export USER_NAME=triplem
export VERSION=1.0

echo "You do need to be logged in to docker to be able to fully use this script"

for DIR in api database ui; do
   pushd ./$DIR
   docker build -t $USER_NAME/$DIR:$VERSION .
#   docker push $USER_NAME/$DIR:$VERSION
   popd 
done
