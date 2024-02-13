#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/mingw64/bin:/c/Windows/System32
export LANG=en_US.UTF-8

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color


homePath=`cd $(dirname $0); pwd -P`
cd $homePath

command="$1"
command2="$2"

git config --global push.default simple
git config user.name "Your Name" 
git config user.email "Your Name@doman.com"
git config pull.rebase true 

echo -e "${BLUE}-- git commit --${NC}"
git add --all
echo '"'backup at $(date) '"' | xargs git commit -m

echo -e "${BLUE}-- git pull --${NC}"
git pull

echo -e "${BLUE}-- git push --${NC}"
git push


