
# parse flags and options
viewer="less -RFXK"   # default viewer
true_markdown=0       # default to more streamlined markdown
while [ ${#} -gt 0 ]; do
    case ${1} in
        -h | --help)
            echo ''
            echo 'xmpl - show quick reference examples for commands'
            echo ''
            echo 'usage: xmpl [-h | --help] [-c | --cat] command-name'
            echo '   -h, --help : prints this help message'
            echo '   -c, --cat  : use cat to view example (instead of less)'
            echo ''
            exit 0
            ;;
        -c | --cat)  # output via cat instead of less
            viewer="cat"
            shift
            ;;
        -m | --markdown) # render faithful markdown
            true_markdown=1
            shift
            ;;
        -* | --*)
            >&2 echo "xmpl: unknown option ${1}"
            exit 1
            ;;
        *)
            name=${1} # command name is only positional argument
            shift
            ;;
    esac
done


PREFIX=<prefix-tag>  # value set at make-time via sed
q="'"

user_dir=~/.local/share/xmpl      # location for user's docs
sys_dir=${PREFIX}/share/xmpl      # system directory of official docs
user_path=${user_dir}/${name}.md  # path of user .md (if exists)
sys_path=${sys_dir}/${name}.md    # path of official .md (if exists)

if [ -f ${user_path} ]; then   # check for user file
    styled=$(stylize_md ${user_path} ${true_markdown}) # path to stylized file
    ${viewer} ${styled}
elif [ -f ${sys_path} ]; then  # fallback to official file 
    styled=$(stylize_md ${sys_path} ${true_markdown}) # path to stylized file
    ${viewer} ${styled}
else
    >&2 echo "xmpl: no file for ${q}${name}${q} at any of"
    >&2 echo "  ${sys_path}"
    >&2 echo "  ${user_path}"
    >&2 echo "No such files"
fi

rm -f ${styled}  # remove temporary file (created in stylize_md)
