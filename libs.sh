#!/bin/bash
set -e

if ! type "curl" > /dev/null; then 
    echo "Missed curl dependency" >&2; 
    exit 1; 
fi
if ! type "tar" > /dev/null; then 
    echo "Missed tar dependency" >&2; 
    exit 1; 
fi

curl -LO https://github.com/EthanRTF/react-native-pjsip-builder/releases/download/v2.8-with-vialer/release.tar.gz
tar -xvf release.tar.gz
rm release.tar.gz