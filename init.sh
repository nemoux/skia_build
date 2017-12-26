#!/bin/bash
git submodule init && git submodule update
. export.sh
gclient sync -r dd45f8195783efc7b8044b006eae5ea5ac127cc2
ln -sf $PWD/debian skia/ 
cd skia && python bin/fetch-gn
