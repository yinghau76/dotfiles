This repository contains my personal dotfiles.

## Cloning the repo

After cloning the repo into `~/.dotfiles`, initialze and update the submodules by the following commands:

```
$ cd ~/.dotfiles
$ git submodule update --init --depth=1
```

Different dotfiles can be sym-linked to your home folder by GNU stow. For example:

```
$ cd ~/.dotfiles
$ stow git
$ stow gdb
```

Some dotfiles (e.g. fzf) require additional setup:

```
$ ~/.fzf/install
```
