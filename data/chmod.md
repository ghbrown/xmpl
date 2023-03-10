change permissions (and mode bits)

# Example 1
make `foo.sh` executable (`+x`)
```
chmod +x foo.sh
```

# Example 2
render `foo.sh` non-executable (`-x`) for others (`o`) who are not the file owner nor members of the file's group
```
chmod o-x foo.sh
```

# Example 3
render `bar/` and all contents recursively (`-r`) non-writable (`-w`) for the file owner/user (`u`)
```
chmod -R u-w bar
```

# Notes
```
LETTER    CLASS     DESCRIPTION
 u        user      file owner
 g        group     members of the file's group
 o        others    users who are not owner nor member of file's group
 a        all       all three of above (same as ugo)
 (empty)  default   same as a, except umask bits will be unchanged

OPERATOR   DESCRIPTION
 +         add specified modes to specified classes
 -         removes specified modes from specified classes
 =         modes specified are to be exact modes for specified classes

MODE   NAME     DESCRIPTION
 r     read     read a file or list a directory's contents
 w     write    write to a file or directory
 x     execute  execute a file or recurse a directory tree
```
