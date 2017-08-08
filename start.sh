#!/bin/bash

echo "hello there"

service elasticsearch start
echo "started elasticsearch in background"

service kibana start
echo "started kibana in background"

echo "will do sleep infinity"
echo "press Ctrl-C to stop"

sleep infinity
