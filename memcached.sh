#!/bin/sh

root=$(pwd)
prefix="$root/vendor/memcached"

# build into $prefix
cd memcached-*
./configure --prefix="${prefix}"
make install

# clean up source tree
cd $root
rm -rf memcached-*

# write profile.d
mkdir -p $root/profile.d
cat >$root/profile.d/memcached.sh <<EOF
INCLUDE_PATH="/app/vendor/memcached/include:${INCLUDE_PATH}"
LD_LIBRARY_PATH="/app/vendor/memcached/lib:${LD_LIBRARY_PATH}"
PATH="/app/vendor/memcached/bin:${PATH}"
EOF
