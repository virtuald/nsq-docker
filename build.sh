#!/bin/bash
#
# Assumes you have the NSQ source code checked out next to this directory
#

cd `dirname $0`

REPO=virtuald

pushd base 
docker build -t $REPO/nsq-base .
popd

pushd nsqd
docker build -t $REPO/nsqd .
popd

pushd nsqlookupd
docker build -t $REPO/nsqlookupd .
popd

pushd nsqadmin
docker build -t $REPO/nsqadmin .
popd
