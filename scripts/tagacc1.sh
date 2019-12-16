#!/bin/bash

git tag -d acc1
git push origin :acc1
git tag -a acc1 -m "Deploy to acc1"
git push --tags
