#!/bin/sh

if [ ! -z "$1" ]; then
    source="kinaskan.$1.css"
    target="kinaskan.$1.min.css"
fi

wget --post-data="input=`cat css/$source`" --output-document=css/$target https://cssminifier.com/raw
