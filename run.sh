#!/bin/sh
mkdir -p build && cd build && cmake .. && make app/fast && bin/app $*
