remove files or directories

# Example 1
remove file `foo.txt`
```
rm foo.txt
```

# Example 2
remove directory `bar/` and its contents recursively (`-r`)
```
rm -r bar
```

# Example 3
remove files `foo.txt` and `baz.txt`, forcing (`-f`) to ignore all prompts
```
rm -f foo.txt baz.txt
```

# Notes
the `rm` command is often aliased to `rm <some options>` in shell configuration files like `.bashrc`, `.bash_profile`, etc.
