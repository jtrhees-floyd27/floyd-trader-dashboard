#!/bin/bash
cd $(dirname $0)
git add .
git commit -m \"Deploy update\"
git remote add origin https://$GH_TOKEN@github.com/jtrhees-floyd27/floyd-trader-dashboard.git || git remote set-url origin https://$GH_TOKEN@github.com/jtrhees-floyd27/floyd-trader-dashboard.git
git branch -M main
git push -u origin main -f
echo \"Deployed to https://jtrhees-floyd27.github.io/floyd-trader-dashboard/\"
