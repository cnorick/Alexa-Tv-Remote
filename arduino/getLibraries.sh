#/bin/bash
# Downloads/updates the libraries needed for the arduino sketch.

if [ ! -d "libraries" ]; then
    mkdir libraries
fi


cd libraries


if [ ! -d "aRest" ]; then
    git clone -q https://github.com/marcoschwartz/aREST.git aRest
else
    git checkout master && git pull
fi


if [ ! -d "pubsubclient" ]; then
    git clone -q https://github.com/knolleary/pubsubclient.git pubsubclient
else
    git checkout master && git pull
fi
