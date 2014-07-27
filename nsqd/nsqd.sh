#!/bin/sh

# support linking so we can use the ambassador pattern
#
#   $ docker run -link some_container:nsqlookupd
#
# The second part must ALWAYS be nsqlookupd. 

if [ "$NSQLOOKUPD_PORT" != "" ]; then
    # we extract the ip from the port because of the port is incorrect 
    # when using ambassadord, otherwise we could just use it directly
    LOOKUPD_IP=`echo $NSQLOOKUPD_PORT | sed 's/tcp:\/\/\(.*\):.*/\1/'`
    LOOKUPD_ARGS=-lookupd-tcp-address=$LOOKUPD_IP:4160
fi

exec /usr/bin/nsqd $LOOKUPD_ARGS $@
