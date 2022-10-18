#!/bin/bash

nginx_dir="./nginxMount"

./quality-check.sh
if [[ "$?" == 1 ]]
then
	echo "quality check not passed!"
	exit 1
fi

./build-client.sh

rm -r $nginx_dir/*

cp ./dist/client-app.zip $nginx_dir/

cd $nginx_dir

unzip ./client-app.zip

mv ./dist/app/* ./

