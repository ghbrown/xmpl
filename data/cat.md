concatenate files (and print to stdout)

# Example 1
print contents of `foo.txt` to standard output
```
cat foo.txt
```

# Example 2
print contents of `foo.txt` concatenated with `bar.txt`, numbering
(`-n`) output lines
```
cat -n foo.txt bar.txt
```

# Example 3
print contents of `foo.txt` to standard output, showing non-printing characters (except for `LFD` and `TAB`) and and `$` at line endings (`-e`)
```
cat -e foo.txt
```

# Example 4
print contents of `foo.txt` to standard output, showing `TAB` as `^I`
(`-T`)
 cat -T foo.txt
