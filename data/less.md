scroll through file contents

# Example 1
interactively view `foo.txt`
```
less foo.txt
```

# Example 2
interactively view `foo.txt` with line numbers (`-N`)
```
less -N foo.txt
```

# Example 3
interactively view `foo.txt` and `bar.txt` (must swap between files, see notes)
```
less foo.txt
```

# Notes
commands inside of viewer
```
           q : exit
           h : help
j, down-arrow: scroll down
  k, up arrow: scroll up
           / : search for text
    CTRL + g : cancel search
          :n : next file
          :p : previous file
```
