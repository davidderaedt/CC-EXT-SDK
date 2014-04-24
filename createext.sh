#!/bin/bash

#move to script dir parent
BASEDIR=$(dirname $0)
cd $BASEDIR
cd ../

#create extensions folder if does not exist
mkdir -p ~/Library/Application\ Support/Adobe/CEPServiceManager4/extensions

#copy template specified in 1st arg to destination specified in 2nd arg
cp -r $BASEDIR/templates/$1/ ~/Library/Application\ Support/Adobe/CEPServiceManager4/extensions/$2

#return resulting path
echo ~/Library/Application\ Support/Adobe/CEPServiceManager4/extensions/$1