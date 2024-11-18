#!/bin/bash

host_name=$1
ip_address=$2
dns_server=$3

ip_correct=$(dig +short "$host_name" @"$dns_server" | tail -n 1)

if [[ "$ip_address" == "$ip_correct" ]]; then
    echo "OK"
else
    echo "NU"
fi

exit 0
