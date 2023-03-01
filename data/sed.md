"stream editor"; edit, filter, and transform text
especially useful for finding and replacing text

# Example 1
replace `foo` with `bar` (first occurence per line) in `baz.txt`, sending edited result to terminal output
```
sed 's/foo/bar/' baz.txt
```

# Example 2
replace `foo` with `bar` (all occurences) on line 4 of `baz.txt`, sending edited result to terminal output
```
sed '4 s/foo/bar/g' baz.txt
```

# Example 3
replace `a<anything>foo` with `bar` (first occurence per line), editing the file in place
```
sed -i 's/a*foo/bar/' baz.txt
```
