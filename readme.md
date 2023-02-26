
## `xmpl`

Useful and understandable examples for Linux commands, right at your fingertips on the command line.


### Usage

To get common usage for the `find` command with explanations try

```
$ xmpl find

# Example 1
find files with exact name `foo.txt` in home directory (or children)
  find ~/ -name foo.txt
<continued...>
```

You can supply your own markdown formatted examples in `~/.local/share/xmpl`.
These effectively overwrite the included examples, so start by copying the relevant example from `/usr/share/xmpl` or `/usr/local/share/xmpl` if you want to make edits.


### Installation

Clone and install by running the following commands in the terminal

```
git clone https://github.com/ghbrown/xmpl.git
cd xmpl
make
sudo make install
```

Uninstall with

```
sudo make uninstall
```

If you don't have `sudo` priveleges (or just want a user install), use
`make install-user` and `make uninstall-user` instead of the
respective commands above.


### Contributing

Bug reports can be made via issue. Portability bugs are first
priority, followed by command usage and/or grammar mistakes.

Contributions are always welcome, especially documentation for
commands currently missing examples or those missing common use
cases. More information about the project and contribution guidelines
can be found in `contributing.md`.


### Comparison with similar projects

- zero dependencies beyond typical GNU+Linux utilities like `sed`, etc.; not even Python
- simple and easy to use; it does one thing (show examples) and does it well
- follows typical GNU+Linux program behavior for install, configuration, etc., no need to remember custom install or config steps

I didn't know other projects like this existed before I wrote `xmpl`  (though not for lack of searching). After surveying the competition:
- [`eg`](https://github.com/srsudar/eg) ticks all my boxes, but has somewhat bloated example pages that may approach or exceed the length of the manpages themselves
- [`tldr`](https://github.com/tldr-pages/tldr) is great except you can't trivially add personal/local/custom examples

