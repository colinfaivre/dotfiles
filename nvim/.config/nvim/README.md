## General
[neovim doc](https://neovim.io/doc/)

**@MOVE_SHORTCUTS**
- move a line or a group of lines: ALT+up / ALT+down
- move to next empty line: }
- move to previous empty line: {
- move to matching pair character: %
- move half screen up: CTL+u
- move half screen down: CTL+d

**@EDIT_SHORTCUTS**
- yank a line: yy
- paste one line down: p
- paste one line up: P
- insert mode after char: a
- insert mode at the end of the line: A
- insert mode before char: i
- insert mode at the beginning of the line: I
- delete one char and stay in normal mode: x
- delete one char and go into insert mode: s
- delete one line and go into insert mode: S
- change: c
- delete the rest of the line: D
- delete the rest of the line and go into insert mode: C
- in visual line mode, comment line or block of lines: <leader>gc

**@COMMON_SHORTCUTS**
- run a bash command: :!mkdir test
- undo / redo: u / CTL+r
- refresh current buffer (ex: after an external edit like git or sed): :e

**@HELP_SHORTCUTS**
- open nvim help fullscreen: :help | only
- open nvim help for something: :help something
- jump to a subject: CTL+]
- jump back: CTL+o

**@TODO**
- add a shortcut to write and source a nvim config file
- global search and replace with telescope and quickfix list cdo ?
- add keybindings to replace ctl+w on split window default keybindings for no conflicts with tmux close window
- search in file better with "/" or telescope ? 
- add something to get matching pair character when typing the first ?
- remap caps lock to escape ?
- open a file on split window ?

## Netrw
[netrw doc](https://neovim.io/doc/user/pi_netrw.html)

**@SHORTCUTS**
- open: <leader>e
- close: CTL+^ (go to previous buffer)
- create a file: %
- create a directory: d
- delete a file/dir: del
- go up a directory: -
- hide/unhide dotfiles: gh
- toggle banner: I
- rename file/dir: R
- move file/dir

**@TODO**
- copy file/dir
- mode file/dir
- display directories like a tree
- display file icons

## Telescope
https://github.com/nvim-telescope/telescope.nvim

**@SHORTCUTS**
- Find recently opened files: <leader>? 
- Find existing buffers: <leader><leader> 
- Fuzzily search in current buffer: <leader>/
- [S]earch [F]iles: <leader>sf
- [S]earch [H]elp: <leader>sh
- [S]earch current [W]ord: <leader>sw
- [S]earch by [G]rep: <leader>sg
- [S]earch [D]iagnostics: <leader>sd

**@TODO**
- use telescope instead of git fugitive ?

## Git - Fugitive
**@SHORTCUTS**
**@TODO**
