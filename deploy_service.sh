#!/bin/bash

# Script for automatic commit and push changes to your github repo

echo Editing values
yq e -i '.deployment.numReplicas = 4' values.yaml

echo Push to github repository
git add .
git commit -m "Updated helm values"
git push