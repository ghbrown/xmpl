compress or expand files

# Example 1
compress `foo.txt` (producing `foo.txt.gz`); compression happens in place, so foo.txt will not remain after compression
```
gzip foo.txt
```

# Example 2
decompress `foo.txt.gz` (producing `foo.txt`); decompression happens in
place, so `foo.txt.gz` will not remain after compression
```
gzip -d foo.txt.gz
```

# Example 3
compress `foo.txt` to `bar.txt.gz` using redirect to stdout (-c); `foo.txt` is left unchanged (useful for compressing file to different location)
```
gzip -c foo.txt > bar.txt.gz
```
