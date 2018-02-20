#!/bin/bash

TOKEN=${1:-$CC_TOKEN}
SECRET=${2:-$CC_SECRET}
APP=${3:-$CC_APPLICATION}

mkdir -p ~/.config/
echo '{"token":"'$TOKEN'","secret":"'$SECRET'"}' > ~/.config/clever-cloud

clever link -a app $APP

clever restart --without-cache

