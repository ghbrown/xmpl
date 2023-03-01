compress and expand archives

# Example 1
create tar archive from (`-c`) `foo/` in file (`-f`) `foo.tar.gz` with gzip compression (`-z`)
(the two commands below are equivalent, but note argument order swap)
```
tar -z -c foo -f foo.tar.gz
tar -zcf foo.tar.gz foo
```

# Example 2
extract (`-x`) tar archive of compressed (`-z`) archive from file (`-f`) `foo.tar.gz`
(the two commands below are equivalent)
```
tar -x -z -f foo.tar.gz
tar -xzf foo.tar.gz
```

# Example 3
extract (`-x`) tar archive of compressed (`-z`) archive from file (`-f`) `foo.tar.gz` to existing directory (`-C`) `bar/`
(the two commands below are equivalent)
```
tar -x -z -f foo.tar.gz -C bar/
tar -xzf foo.tar.gz -C bar/
```

# Notes
The name of the tar archive (e.g. `foo.tar.gz`) does not determine the name of the untarred directory; for example, foo.tar.gz could untar to `bar/`.
The given examples also apply to the no-compression case by omission of the `-z` flags.
