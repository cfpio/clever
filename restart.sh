#!/bin/bash

TOKEN=${1:-$CC_TOKEN}
SECRET=${2:-$CC_SECRET}
APP=${3:-$CC_APPLICATION}

mkdir -p ~/.config/
echo '{"token":"'$1'","secret":"'$2'"}' > ~/.config/clever-cloud

clever link -a app $3

clever restart --without-cache

