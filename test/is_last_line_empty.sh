#!/bin/sh

echo 'checking that last line is empty for all examples'
for filename in ${@}; do
    last_line=$(tail -n 1 ${filename})
    if [ ! -z ${last_line} ]; then
        echo "  ERROR: last line of ${filename} is not empty"
    fi
done
