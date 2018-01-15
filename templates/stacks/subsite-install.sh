#!/bin/bash

if [ ! -d .git ];then
  git init
  git remote add origin ${PROJECT_REPOSITORY}
fi
git pull origin master

composer install

if [ -L toolkit ]; then
  ./vendor/ec-europa/toolkit/bin/phing build-platform build-subsite-dev install-clean
fi
