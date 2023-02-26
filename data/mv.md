
move/rename files and directories

# Example 1
rename `foo.txt` to `bar.txt`
```
mv foo.txt bar.txt
```

# Example 2
move `foo.txt` to directory `bar/`; directory `bar/` must exist, else `foo.txt` will be renamed to bar
(the following are equivalent if directory bar/ exists)
```
mv foo.txt bar
mv foo.txt bar/foo.txt
```

# Example 3
move multiple files to a directory (that must exist)
```
mv foo.txt foo.c bar
```

# Example 4
move contents of `foo/` to `bar/` while being interactively (`-i`) prompted to overwrite existing files and directories
```
mv -i foo/* bar
```

# Example 5
move contents of `foo/` to `bar/`, forcefully (`-f`) overwriting existing files of the same name
```
mv -f foo/* bar
```

