#!/bin/sh

root=$(pwd)
prefix="$root/vendor/memcached"

cd memcached-*
./configure --prefix="${prefix}"
make install

cd $root
rm -rf memcached-*
