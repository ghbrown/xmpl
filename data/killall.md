
terminate processes by name
(see also: `kill`)

# Example 1
kill all processes with name exactly matching `firefox`
```
killall firefox
```

# Example 2
kill all processes with name containing `fire` using regex (`-r`), while ignoring case (`-I`)
```
killall -I -r .*fire.*
```

# Example 3
kill all processes with name exactly matching `firefox`, while being
interactively (`-i`) prompted for each kill
```
killall -i firefox
```

