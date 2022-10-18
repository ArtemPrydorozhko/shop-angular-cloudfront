#!/bin/bash

npm run lint
if [[ "$?" == 1 ]]
then
	echo "Lint not passed!"
	exit 1
fi

npm run test-ci
if [[ "$?" == 1 ]]
then
	echo "Tests not passed!"
	exit 1
fi

npm audit
if [[ "$?" == 1 ]]
then
	echo "Npm audit not passed!"
	exit 1
fi
