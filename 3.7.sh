#!/bin/bash

echo "BUILDING TARBALL FOR 3.7"

mkdir -p dist
if [ -z "${BUILD_NUMBER}" ]; then
    echo "No build number"
    zip dist/Python-3.7-Android-support.tar.gz -r content
else
    echo "Build number ${BUILD_NUMBER}"
    zip dist/Python-3.7-Android-support.${BUILD_NUMBER}.zip -r content
fi