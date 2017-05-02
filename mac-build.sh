#!/bin/bash
rm -rf build-mac 
rm -rf .qi 
qitoolchain remove mac --force
qitoolchain create mac ~/toolchains/naoqi-sdk-mac64/toolchain.xml
qibuild init
qibuild add-config mac --toolchain mac
qibuild configure -c mac
qibuild make -c mac