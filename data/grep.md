
print lines that match regular expressions

# Example 1
print all lines in `foo.txt` containing exactly `bar`
```
grep foo bar.txt
```

# Example 2
print all lines in or below (recursively, `-r`) the current directory containing `bar<arbitrary characters>baz` where `bar` and `baz` are matched case insensitively (`-i`)
```
grep -i -r bar.*baz .
```

# Example 3
print all lines from `foo.txt` containing `bar<arbitrary characters><any number of spaces><arbitrary characters>baz`
```
grep "bar.* *.*baz" foo.txt
```

# Example 4
use match inversion (`-v`) to print all lines from foo.txt containing `bar` but not `baz` (lines containing both `bar` and `baz` won't be printed)
```
grep bar foo.txt | grep -v baz
```

