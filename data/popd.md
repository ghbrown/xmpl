pop entry from directory stack
(see also: `pushd`, `dirs`)

# Example 1
pop top entry from directory stack, moving to the next directory
```
popd
```

# Notes
in practice, usage of `popd` in a workflow often looks like
```
cd ~/foo/bar
pushd /usr/lib  # perhaps to examine available libraries
popd            # return to ~/foo/bar by popping /usr/lib from stack
```
