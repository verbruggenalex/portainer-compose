#!/bin/bash

env

if [ ! -d .git ];then
  git clone ${PROJECT_REPOSITORY}
fi
sleep 60
composer install

if [ -L toolkit ]; then
  ./vendor/ec-europa/toolkit/bin/phing build-platform build-subsite-dev install-clean -logger phing.listener.AnsiColorLogger
fi
