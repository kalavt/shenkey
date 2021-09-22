#!/bin/sh

/boot.sh &
thttpd -D -h 0.0.0.0 -p 80 -d /shenkey/shenkey