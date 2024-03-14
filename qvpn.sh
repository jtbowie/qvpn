#!/usr/bin/bash

nordvpn status | grep "Con" >& /dev/null


if [ $1 == "-s" ];
then
	nordvpn status
	exit 0
fi

if [ $? -gt 0 ]
then
	nordvpn connect
else
	nordvpn disconnect
fi

nordvpn status
