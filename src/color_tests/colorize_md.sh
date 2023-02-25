#!/bin/sh

# useful regex concepts: [^x] matches all characters but x
#                        \(<stuff>\) sed capture
#                        \{1,} one or more occurence of the preceding
#                              pattern/character

# escape code parts
esc=$(printf '\033')
nll=0 # end styling
bld=1 # bold
unl=4 # underline
blk=30
red=31
grn=32
ylw=33
blu=34
mgt=35
cyn=36
wht=37

# full codes
hdr="${esc}[${mgt};${bld}m" # header (starts: magenta, bold)
nln="${esc}[${ylw}m"        # inline code (starts: yellow)
cbl="${esc}[${grn}m"        # block code (starts: green)
end="${esc}[${nll}m"


function stylize_line_by_line() {
    in_file="${1}"  # file to stylize
    faithful=${2}   # render markdown faithfully?
    cfile=/tmp/xmpl_colorized.md  # stylized file location
    rm -f ${cfile}
    in_code_block=0
    while IFS= read -r line; do # iterative over file lines
        start_end_block=$(block_start_or_end ${line} ${in_code_block})
        # housekeeping for code block start
        if [ ${start_end_block} -eq 1 ]; then
            in_code_block=1
        fi
        # stylize line
        if [ ${in_code_block} -eq 1 ]; then
            line=$(style_code_block "${line}" ${faithful})
        else
            line=$(style_header "${line}")
            line=$(style_inline_code "${line}")
            # if needed: style_bold, style_underline
        fi
        # housekeeping for code block end
        if [ ${start_end_block} -eq 2 ]; then # block ended
            in_code_block=0
        fi
        # skip output of ``` lines if appropriate
        if [ ${faithful} -eq 0 ] && ([ ${start_end_block} -eq 1 ] ||
             [ ${start_end_block} -eq 2 ]); then
            pass=1 # dummy variable to pass
        else
            echo "${line}" >> ${cfile}
        fi
    done < "${in_file}"
    less -R ${cfile}
}


function block_start_or_end() {
    # determine whether passed line is the start or end of a code
    # block (or not)
    # return value: 0 (code block not starting or ending)
    #               1 (code block starting)
    #               2 (code block ending)
    # check for backticks
    string="${1}"
    in_block=${2}
    grep_out=$(echo "${string}" | grep "\`\`\`")
    if [ -z "${grep_out}" ]; then
        has=0 # no backticks
    else
        has=1 # has backticks (so start or end of block)
    fi
    # determine what backticks (if present) signify
    if [ ${has} -eq 1 ] && [ ${in_block} -eq 0 ]; then # code block starting
        stend=1
    elif [ ${has} -eq 1 ] && [ ${in_block} -eq 1 ]; then # code block ending
        stend=2
    else
        stend=0 # code block not starting/ending (but may be ongoing)
    fi
    echo ${stend}
}


function style_header() {
    # stylizes the header pattern <one or more #><anything>
    string="${1}"
    if [ ${faithful} -eq 1 ]; then
        echo "${string}" | sed "s/\(#\{1,\}\)\(.*\)/\1${hdr}\2${end}/g"
    elif [ ${faithful} -eq 0 ]; then
        echo "${string}" | sed "s/#\{1,\} \(.*\)/${hdr}\1${end}/g"
    fi
}


function style_inline_code() {
    # stylizes the inline code pattern
    # `<more than one of (anything but `)>`
    string="${1}"
    if [ ${faithful} -eq 1 ]; then
        echo "${string}" | sed "s/\(\`[^\`]\{1,\}\`\)/${nln}\1${end}/g"
    elif [ ${faithful} -eq 0 ]; then
        echo "${string}" | sed "s/\`\([^\`]\{1,\}\)\`/${nln}\1${end}/g"
    fi
}


function style_code_block() {
    # stylizes line as code block
    # (only called on lines definitely in code block)
    string="${1}"
    faithful=${2} # render faithful markdown?
    if [ ${faithful} -eq 1 ]; then
        echo "${string}" | sed "s/\(.*\)/${cbl}\1${end}/"
    elif [ ${faithful} -eq 0 ]; then
        echo "${string}" | sed "s/\(.*\)/  ${cbl}\1${end}/"
    fi
}


stylize_line_by_line asdf.md 1
