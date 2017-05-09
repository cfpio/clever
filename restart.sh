#!/bin/bash

TOKEN=$1
SECRET=$2
APP=$3

echo '{"token":"'$1'","secret":"'$2'"}' > ~/.config/clever-cloud

clever link -a app $3

clever restart --without-cache

