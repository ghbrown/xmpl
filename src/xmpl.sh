#!/bin/sh

function xmpl {
    q="'"
    xmpl_dir=~/.local/share/xmpl   # directory containing docs
    xmpl_path=${xmpl_dir}/${1}.txt # path of desired .txt (if exists)
    if [ -f ${xmpl_path} ]; then
        less ${xmpl_path}
    else
        echo "xmpl: cannot access example file for ${q}${1}${q} at"
        echo "  ${xmpl_path}"
        echo "No such file"
    fi
}
