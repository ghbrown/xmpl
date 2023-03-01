searches for files by their name and properties (file type, etc.)

# Example 1
find files with exact name `foo.txt` in home directory (or children)
```
find ~/ -name foo.txt
```

# Example 2
find directories (`-d`) containing `foo` anywhere on system, case insensitive (`-iname`)
```
find / -type d -iname "*foo*"
```
