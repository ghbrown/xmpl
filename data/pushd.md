add to directory stack
(see also: `popd`, `dirs`)

# Example 1
add current directory to directory stack while changing to `/usr/bin`
```
pushd /usr/bin
```

# Notes
in practice, usage of `pushd` in a workflow often looks like
```
cd ~/foo/bar
pushd /usr/lib  # perhaps to examine available libraries
popd            # return to ~/foo/bar by popping /usr/lib from stack
```
