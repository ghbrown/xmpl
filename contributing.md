
### "Testing"
Before making a pull request, please ensure contributions pass
linting by running a `make check`.

### Style guidelines
#### Meta
- uknown arguments supplied by user should use the angle bracket
notation like `<uknown argument>`
- `foo`, `bar`, and `baz` are the default stand-in names for most
cases
- when commands are intimately connected, it is appropriate to include
a `(see also: <command1>, <command2>, ...)` below the summary in the
example file; a good case would be `pushd`, `popd` and `dirs` 
- sections are specified with `-- <Section Name> ---` like
`-- Example 1 --`
- sometimes it is appropriate to write a `-- Notes --` section at the
end of the file, but it should never be much longer than about 7 lines

#### Specifics
- no complete sentences or capitalization unless absolutely necessary
(perhaps in a `-- Notes --` section)
- the text explanation for an example should be no longer than 2 lines
- the actual example command should **not** be prefaced with a `$` or
`#`, if the user will need `sudo` just include it
- when discussing paths, do not wrap them with decorators like
`` `foo/bar` `` unless the path has spaces, in which case wrap with
apostrophes like `'foo/bar baz'` (though you should endeavour to use
paths without spaces where possible)
- when discussing pattern matching, wrap the pattern to be matched
in double quotes like `"this"`, see `grep.txt` for an example

