terminate processes by process ID (PID)
(see also: `killall`)

# Example 1
kill process with PID 10101 by sending default (and preferred) TERM
signal
```
kill 10101
```

# Example 2
force kill processes 10101 and 20202 by sending stronger (but more unstable) KILL signal (`-s`) (the following are equivalent)
```
kill -s KILL 10101 20202
kill -9 10101 20202
```
