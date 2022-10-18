#!/bin/bash

build_dir="./dist"
build_file_path="$build_dir/client-app.zip"

export ENV_CONFIGURATINO="development"

npm install

if [[ -f "$build_file_path" ]]
then
	rm $build_file_path
fi

npm run build --configuration=$ENV_CONFIGURATION --output-path=$build_dir
zip -r $build_file_path $build_dir/*
