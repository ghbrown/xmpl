#!/bin/sh

# NOTE: test currently obsolete and unused by Makefile
# properly formatted files are padded by a SINGLE blank line on top
# and bottom

echo 'checking that extremal lines are empty for all examples'
for filename in ${@}; do
    first_line=$(head -n 1 ${filename})
    second_line=$(head -n 2 ${filename} | tail -n 1)
    second_last_line=$(tail -n 2 ${filename} | head -n 1)
    last_line=$(tail -n 1 ${filename})
    # first and last line should be empty
    if [ ! -z "${first_line}" ]; then
        echo "  ERROR: first line of ${filename} is non-empty"
    fi
    if [ ! -z "${last_line}" ]; then
        echo "  ERROR: last line of ${filename} is non-empty"
    fi
    # second and second to last lines should be non-empty
    if [ -z "${second_line}" ]; then
        echo "  ERROR: second line of ${filename} is also empty"
    fi
    if [ -z "${second_last_line}" ]; then
        echo "  ERROR: second to last line of ${filename} is also empty"
    fi
done
