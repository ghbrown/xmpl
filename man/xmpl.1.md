% XMPL(1) xmpl

# NAME
xmpl - show quick reference examples for commands

# SYNOPSIS
**xmpl** [*options*] *command-name*

# DESCRIPTION
**xmpl** provides access to common and example usage of commands

One or more examples (each with numbered header) are given for each
command; each example contains an explanation of the example in words
followed by the command(s) on an indented line.

# OPTIONS
**-h**, **--help**
: Displays the help message
**-c**, **--cat**
: Use cat to view example (instead of the default less)

# EXAMPLES
**xmpl find**
: Displays example usage for the find command

**xmpl -c find**
: Displays example usage for find using cat to view output

# EXIT VALUES
**0**
: Sucess

**1**
: Failure

# BUGS
Report bugs to <https://github.com/ghbrown/xmpl/issues>

# AUTHOR
Written by Gabriel H. Brown.

# COPYRIGHT
Copyright © 2023 Gabriel Brown. License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law.
