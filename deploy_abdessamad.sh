#!/bin/bash

dev="./project/dev"
prod="./project/prod"
staging="./project/staging"
cf="/config.json"
while [ ! -d "$cf" ]; do
     if [ -d "$dev" ]; then
      if [ -d "$prod" ]; then
       if [ -d "$staging" ]; then
         cp -r $dev/* $prod
         cp -r $prod/* $staging
         echo " copy done "
       fi
      fi
else
    echo " copy not done "
fi
done