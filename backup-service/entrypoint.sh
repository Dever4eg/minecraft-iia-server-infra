#!/bin/sh
env >> /etc/environment
exec /usr/sbin/crond -f -l 0
