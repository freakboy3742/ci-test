#!/bin/bash

echo "BUILDING TARBALL FOR 3.7"

mkdir -p dist
if [ -z "${BUILD_NUMBER}" ]; then
    echo "No build number"
    tar zcvf dist/Python-3.7-Android-support.tar.gz content
else
    echo "Build number ${BUILD_NUMBER}"
    tar zcvf dist/Python-3.7-Android-support.${BUILD_NUMBER}.tar.gz content
fi