output beginning (head) of file

# Example 1
show first 10 lines (the default number) of `foo.txt`
```
head foo.txt
```

# Example 2
show first 20 lines of `foo.txt`, using `-n` to specify number of lines
```
head -n 20 foo.txt
```

# Example 3
show the first 10 lines of all `.txt` files in the current directory, giving each section a header
```
head *.txt
```
