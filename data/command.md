execute or view interpretation of command
(see also: `type`)

# Example 1
display how `gcc` would be interpreted if used as a command (effectively showing its path/location on the system)
```
command -v gcc
```

# Example 2
execute the Python interpreter
```
command python
```

# Notes
`command` can also detect aliases, in which case it prints the command pointed to by the alias (but not necessarily its path)
