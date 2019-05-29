#!/bin/sh

repo_name=$1
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

curl -u 'hj131998' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
git init
git remote add origin "https://github.com/hj131998/$repo_name.git"