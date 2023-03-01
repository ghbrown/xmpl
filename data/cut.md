remove portions of text streams

# Example 1
split text on specified delimeter (`-d`) (spaces in this case) and select the second field (`-f`)
```
echo 'foo bar baz' | cut -d ' ' -f 2
```

# Example 2
cut portion of text by specifying the indices of the desired
characters (here 1-3)
```
echo 'foo bar baz' | cut -c 1-3
```
