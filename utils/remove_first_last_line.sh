#!/bin/sh

# edits file in place, removing first and last line

tfile=$(mktemp)
for file in ${@}; do
    head -n -1 "${file}" | tail -n +2 > "${tfile}"
    cp -f "${tfile}" "${file}"
done
rm "${tfile}"
