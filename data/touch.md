
create files (and change their timestamps)

# Example 1
create file `a.txt` in the current directory and `b.txt` inside of
`foo/` (`foo/` must exist)
```
touch a.txt foo/b.txt
```

# Example 2
change access time (`-a`) of `bar.txt` to the current time
```
touch -a bar.txt
```

# Example 3
change modification time (`-m`) of `bar.txt` to a specific timestamp
(`-t`)
(Y: year, M: month, D: day, h: hour, m:minute)
```
touch -m -t <YYYYMMDDhhmm> bar.txt
```

