download files from the network

# Example 1
dowload a file to local directory
```
wget https://example.com/release.tar.gz
```

# Example 2
dowload a file to local directory with specified "output" name (`-O`)
```
wget -O foo.tar.gz https://example.com/release.tar.gz
```

# Example 3
recursively (`-r`) download files in the background (`-b`)
```
wget -r -b https://example.com/release
```
