#!/bin/sh
mkdir -p build && cd build && cmake .. && make test/fast && bin/test $*
