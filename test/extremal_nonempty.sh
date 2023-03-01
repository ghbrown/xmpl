#!/bin/sh

# properly formatted files have non-empty first and last lines
# (since blanks are appended when rendering)

echo 'checking that extremal lines are non-empty for all examples'
for filename in ${@}; do
    first_line=$(head -n 1 ${filename})
    second_line=$(head -n 2 ${filename} | tail -n 1)
    second_last_line=$(tail -n 2 ${filename} | head -n 1)
    last_line=$(tail -n 1 ${filename})
    # first and last line should be non-empty
    if [ -z "${first_line}" ]; then
        echo "  ERROR: first line of ${filename} is empty"
    fi
    if [ -z "${last_line}" ]; then
        echo "  ERROR: last line of ${filename} is empty"
    fi
done
