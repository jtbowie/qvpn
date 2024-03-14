#!/usr/bin/bash

if [ $# -gt 0 ];
then
    if [ $1 == "-s" ];
    then
        nordvpn status
	    exit 0
    fi
fi

nordvpn status | grep "Con" >& /dev/null

if [ $? -gt 0 ];
then
	nordvpn connect
else
	nordvpn disconnect
fi

nordvpn status
