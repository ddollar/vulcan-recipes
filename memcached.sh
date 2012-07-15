#!/bin/sh
cd memached-*
./configure --prefix=/app/vendor/memcached
make install
