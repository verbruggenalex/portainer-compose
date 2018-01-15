#!/bin/bash

git init
git remote add origin git@github.com:ec-europa/horizon2020-reference.git
git pull origin master
composer install
