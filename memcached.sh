#!/bin/sh
cd memcached-*
./configure --prefix=/app/vendor/memcached
make install
