# Neovim configuration files

This repository hosts an organized and commented neovim configuration, targetting both beginners and seasoned vim users.

## Rationale

Pairing over Screenhero or Google hangout is annoying as blur, lags and input are obstacles to a seamless experience.
[Tmate](http://tmate.io) is much more comfortable but requires to run an editor in a terminal. Vim is a strong choice
as a terminal editor and while not easy to get started with, can still be friendly if appropriately configured.

This configuration attempts to be battery included and maintain proper documentation to keep onboarding easy.

## Installation

- Install neovim (available in Homebrew)
- `git clone git://github.com/heetch/neovim-config .config/nvim`
- `pip3 install neovim` (required by (deoplete.nvim) which powers autocompletion [https://github.com/Shougo/deoplete.nvim])
- `gem install neovim` (required by (vim-ruby)
- `nvim`
- Type `:PlugInstall` to install all the required plugins.

Only thing left to do is to configure your theme. Just fireup neovim and press `SPC 0` which will then
display a list of pre-installed theme that can be selected from.

Once an enjoyable one is found:

- `cp ~/.config/nvim/private.vim.example ~/.config/nvim/private.vim`
- `nvim ~/.config/nvim/private.vim`
- Look for `colorscheme jellybeans` and replace it with the new one.

## Cheatsheet

### Pair Programming

| Function | Hotkey | Description |
|----------|--------|-------------|
| Show intent to type | `F11` | Show a red notification in status bar telling that the first coder wants to type|
| Show intent to type | `F12` | Show a red notification in status bar telling that the second coder wants to type|

### Inserting and selecting

| Function | Hotkey | Description |
|----------|--------|-------------|
| Enter insert mode | `i` | |
| Enter insert mode | `I` | At the beginning of the line |
| Enter insert mode | `a` | After current character |
| Enter insert mode | `A` | At the end of the line |
| Enter insert mode | `o` | After current line |
| Enter insert mode | `O` | Before current line |
| Enter visual mode | `v` | Select characters |
| Enter visual mode | `V` | Select lines by lines |
| Enter visual mode | `^v` | Select a block |

### Moving around

| Function | Hotkey | Description |
|----------|--------|-------------|
| Move to next word | `w` | Target word first char |
| Move to next word | `e` | Target word last char |
| Move to previous word | `b` | Target word last char |
| Move to next word | `$` | Target end of the line |
| Move to next word | `^` | Target end of the line |

### Moving windows

| Function | Hotkey | Description |
|----------|--------|-------------|
| Focus window to the right | `SPC l` | alternative to traditonal `^w l` |
| Focus window to the left | `SPC h` | alternative to traditonal `^w h` |
| Focus window to the up | `SPC k` | alternative to traditonal `^w k` |
| Focus window to the down | `SPC j` | alternative to traditonal `^w j` |

### Finding files

| Function | Hotkey | Description |
|----------|--------|-------------|
| Show project drawer | `SPC -` | Toggle project drawer |
| Open a file relatively to current buffer | `SPC e` | |
| Fuzzy find a file in current project | `SPC f` | |
| Find in project | `SPC F` | Find occurences of query in every files |
| Find tags in project | `SPC t` | |

### Finding Buffers

| Function | Hotkey | Description |
|----------|--------|-------------|
| Alternate file | `SPC TAB` | Alternate with previously opened buffer in that pane (similar to `CTRL ^` |
| Fuzzy find buffers | `SPC ENTER` | Fuzzy find through opened buffers |

### Snippets

| Function | Hotkey | Description |
|----------|--------|-------------|
| Show available Snippets | | Autocompleted automatically |
| Trigger Snippet expansion | `Ctrl k` | |
| Next expansion step | `Ctrl k` | |

### Language specifics

#### Go

| Function | Hotkey | Description |
|----------|--------|-------------|
| Show project drawer | `SPC _` | Toggle tags bar |
| Run buffer | `SPC SPC r` | |
| Compile | `SPC SPC c` | |
| Run test | `SPC SPC t` | |
| Show coverage | `SPC SPC o` | |
| Run linters | `SPC SPC l` | |
| Go to definition | `SPC SPC d#` | Where `#` can be `s` for a split, `v` for a vertical split, `t` for a tab |
| Go to doc | `SPC SPC gd` | `SPC SPC gs` and `SPC SPC gv` for split or vertical split|
| Go to doc in browser | `SPC SPC gb` | |
| Show interface implementations | `SPC SPC s` | of word under the curor |
| Show signature | `SPC SPC i` | of word under the curor |

