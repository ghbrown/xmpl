output end (tail) of file

# Example 1
show last 10 lines (the default number) of `foo.txt`
```
  tail foo.txt
  ```

# Example 2
show last 20 lines of `foo.txt`, using `-n` to specify the number of lines
```
tail -n 20 foo.txt
```

# Example 3
show the last 10 lines of all `.txt` files in the current directory, giving each section a header
```
tail *.txt
```
