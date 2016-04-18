#!/bin/bash

if [ ! -n "$CONFIG" ]
then
    echo "Env variable CONFIG with edn config for app is missing"
    exit 1
fi

if [ -n "$UBERJAR" ]
then
   gsutil cp -n "$UBERJAR" uberjar.jar
fi

java -jar uberjar.jar "$CONFIG"
