reports word count, character count, newline count, byte count, etc.

# Example 1
report number of lines, number of words, and number of characters (in this order) for `foo.txt`
```
wc foo.txt // returns something like    10  52 260 wc.txt
```

# Example 2
count number of lines in `foo.txt` (very useful for piping into)
```
wc -l foo.txt
```

# Example 3
report number of words in `foo.txt`
```
wc -w foo.txt
```
