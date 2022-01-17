#!/usr/bin/env bash

set -e

drush tome:export -y
git add .
git commit -m 'Updating content'
git push -u origin dev
