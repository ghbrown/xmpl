copy files and directories

# Example 1
copy file `foo.txt` to `foo_copy.txt`
```
cp foo.txt foo_copy.txt
```

# Example 2
copy directory `bar/` and its contents recursively (`-r`) to `baz/`
(if `baz/` does not exist it will be created, if `baz/` exists then `bar/`
and its contents will be copied inside of `baz/`, creating `baz/bar/`)
```
cp -r bar baz
```

# Example 3
copy multiple files (`foo.txt` and `foo.c`) to a directory (`bar/`)
```
cp foo.txt foo.c bar/
```

# Example 4
copy contents of `foo/` to `bar/` while being interactively (`-i`) prompted to overwrite existing files and directories
```
cp -ri foo/* bar
```

# Example 5
copy contents of `foo/` to `bar/`, forcefully (`-f`) overwriting existing files of the same name
```
mv -f foo/* bar
```
