#!/bin/bash

git init
git remote set-url origin ${PROJECT_REPOSITORY}
git pull origin master

composer install

if [ -L toolkit ]; then
  ./tookit/phing build-platform build-subsite-dev install-clean
fi
