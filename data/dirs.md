display directory stack
(see also: `pushd`, `popd`)

# Example 1
display the current state of the directory stack from top (on left) to
bottom
```
dirs
```

# Example 2
display the current state of the directory stack from top (on top) to
bottom
```
dirs -p
```

# Example 3
clear the directory stack
```
dirs -c
```

# Notes
in practice, usage of `dirs` in a workflow often looks like
```
cd ~/foo/bar
pushd /usr/lib  # perhaps to examine available libraries
cd ../lib64     # actually wanted to be in lib64
dirs            # to find out where one would return upon popd
popd            # return to ~/foo/bar by popping /usr/lib from stack
```
