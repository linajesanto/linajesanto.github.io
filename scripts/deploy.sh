#!/usr/bin/env bash

set -e

drush cr
drush tome:static -y -l https://edysmp.github.io/linajesanto
rm -rf gh-pages
git clone git@github.com:linajesanto/linajesanto.github.io gh-pages
cd gh-pages
git checkout main || git checkout -b main
cd ..
rm -rf gh-pages/*
cp -r html/* gh-pages/
cd gh-pages
git add .
git commit -m 'Updating gh-pages site'
git push -u origin main
