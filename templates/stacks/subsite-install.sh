#!/bin/bash

git init
git remote add origin ${PROJECT_REPOSITORY}
git pull origin master

composer install

if [ -L toolkit ]; then
  /var/www/tookit/phing build-platform build-subsite-dev install-clean
fi
