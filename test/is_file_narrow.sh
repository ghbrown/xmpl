#!/bin/sh

max_width=80

echo 'checking that all examples are sufficiently narrow'
for filename in ${@}; do
    width=$(awk '{print length($0)}' ${filename} | sort -nr | head -1)
    if [ ${width} -gt ${max_width} ]; then
        echo "  ERROR: ${filename} is is too wide"
    fi
done
