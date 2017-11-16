#!/bin/bash

if [ $# -ne 2 ] ; then
	echo "usage N M"
	exit 2
fi

./loadtest $1 &

sleep $2

pkill loadtest
