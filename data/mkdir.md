
make/create directories

# Example 1
create directory foo inside of the working directory
```
mkdir foo
```

# Example 2
create directory `foo/bar/baz/` below the current directory, making parent directories (`-p`) (`foo/` and `foo/bar/` here) if they do not exist and doing nothing (and giving no errors) if `foo/bar/baz/` does exist
```
mkdir -p foo/bar/baz
```

