#!/bin/sh

#
# Problem I want to solve: When you start a container, it doesn't
# know the IP address. If I want to create a cluster of NSQ things that
# only communicates on the docker internal network, it needs to set
# broadcast address to the ip of the hostname. 
#
# Solution: if $HOSTNAME is passed in as an argument, then the script
# substitutes it in.
#

nsq_opts=""

while [[ $1 ]]
do
    case "$1" in 
        '$HOSTNAME')
            nsq_opts="$nsq_opts `hostname -i`"
            shift
            ;;
        *)
            nsq_opts="$nsq_opts $1"
            shift
    esac
done

exec /usr/bin/nsqlookupd $nsq_opts
