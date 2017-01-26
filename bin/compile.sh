#!/bin/sh

source='kinaskan.css'
target='kinaskan.min.css'
files='css/reset.css css/open-sans.css css/typography.css css/layout.css css/controls.css css/theme.css'

if [ ! -z "$2" ]; then
    suffix=$1
    shift
    for i in $*; do
        if [ ! -f "css/$i.css" ]; then
            echo error: css/$i.css does\'t exist
            exit 1
        fi
        files="$files css/$i.css"
    done
    source="kinaskan.$suffix.css"
    target="kinaskan.$suffix.min.css"
fi

cat $files > css/$source
