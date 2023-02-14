
### Purpose
`xmpl` is
- a tool to present common usage examples for quick reference on the
command line
- a framework for users to easily write their own examples for
personal use
- a great way to avoid the common and slow workflow

```
navigate to browser window
browser search: example <command> usage
click and scroll
navigate back to terminal
```



`xmpl` is not
- a replacement for man
- meant to capture every use case or every combination of flags and
options

### Steps to a merged pull request

- **linting**: before making a pull request, please ensure
contributions pass "linting" by running `make test` after `make`
- **manpage generation**:
    - manpages are generated using `pandoc` (for ease of development)
    - however, to make `xmpl` easy to install for users `pandoc` is
    **only a developer dependency** (install via your package manager)
    - contributors should run `make man` to generate the manpage
    before `git commit`


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

