#!/usr/bin/env bash

set -e

# deploy static html
git checkout dev
drush cr
drush tome:static -y --uri https://linajesanto.github.io
rm -rf gh-pages
git clone git@github.com:linajesanto/linajesanto.github.io.git gh-pages
cd gh-pages
git checkout main || git checkout -b main
cd ..
rm -rf gh-pages/*
cp -r html/* gh-pages/
cd gh-pages
git add .
git commit -m 'Updating gh-pages site'
git push -u origin main

# export config changes
cd ..
drush tome:export -y
git add .
git commit -m 'Updating content'
git push -u origin dev
