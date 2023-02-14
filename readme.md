
## `xmpl`

Useful and understandable examples for Linux commands, right
at your fingertips on the command line.


### Usage

To get common usage for the `find` command with explanations try

```
$ xmpl find
```

You can supply your own examples in `~/.local/share/xmpl`. These
effectively overwrite the included examples, so start by copying the
relevant example from `/usr/share/xmpl` or `/usr/local/share/xmpl`
if you want to make edits.


### Installation

Install by running the following commands in the terminal

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


### Contributing

Contributions are always welcome, especially documentation for
commands currently missing examples or those missing common use
cases. A template is present at `data/zzz_template`, and more
guidelines can be found in `contributing.md`.

