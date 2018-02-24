#!/bin/bash
if [ $# = 1 ] ; then
  ne_lat=$( expr $1 : '.*ne_lat=\([0-9.-]*\)&' )
  ne_lng=$( expr $1 : '.*ne_lng=\([0-9.-]*\)&' )
  sw_lat=$( expr $1 : '.*sw_lat=\([0-9.-]*\)&' )
  sw_lng=$( expr $1 : '.*sw_lng=\([0-9.-]*\)&' )
  echo "\"ne_lat\":" $ne_lat","
  echo "\"ne_lng\":" $ne_lng","
  echo "\"sw_lat\":" $sw_lat","
  echo "\"sw_lng\":" $sw_lng","
else
  echo "please input link as parameter"
fi
