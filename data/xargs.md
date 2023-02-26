
pipe data to commands which cannot receive via standard pipe (|)

# Example 1
pass timezone string (from web request) to `timedatectl`
```
curl https://ipapi.co/timezone | xargs timedatectl set-timezone
```

