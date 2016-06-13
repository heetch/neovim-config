# Neovim configuration files

This repository hosts an organized and commented neovim configuration, targetting both beginners and seasoned vim users.

## Rationale

Pairing over Screenhero or Google hangout is annoying as blur, lags and input are obstacles to a seamless experience.
[Tmate](http://tmate.io) is much more comfortable but requires to run an editor in a terminal. Vim is a strong choice
as a terminal editor and while not easy to get started with, can still be friendly if appropriately configured.

This configuration attempts to be battery included and maintain proper documentation to keep onboarding easy.

## Installation

`git clone git://github.com/heetch/neovim-config .config/nvim`

## Cheatsheet

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
| Focus window to the right | `SPC l` | |
| Focus window to the left | `SPC h` | |
| Focus window to the up | `SPC k` | |
| Focus window to the down | `SPC j` | |

### Finding files

| Function | Hotkey | Description |
|----------|--------|-------------|
| Show project drawer | `SPC -` | Toggle project drawer |
| Open a file relatively to current buffer | `SPC e` | |
| Fuzzy find a file in current project | `SPC f` | |
| Find in project | `SPC F` | Find occurences of query in every files |

### Finding Buffers

| Function | Hotkey | Description |
|----------|--------|-------------|
| Alternate file | `SPC TAB` | Alternate with previously opened buffer in that pane (similar to `CTRL ^` |
| Fuzzy find buffers | `SPC ENTER` | Fuzzy find through opened buffers |

### Language specifics

#### Go

| Function | Hotkey | Description |
|----------|--------|-------------|
| Show project drawer | `SPC _` | Toggle tags bar |
| Run buffer | `SPC mr` | |
| Compile | `SPC mc` | |
| Run test | `SPC mt` | |
| Show coverage | `SPC mo` | |
| Go to definition | `SPC md#` | Where `#` can be `s` for a split, `v` for a vertical split, `t` for a tab |
| Go to doc | `SPC mgd` | `SPC mgs` and `SPC mgv` for split or vertical split|
| Go to doc in browser | `SPC mgb` | |
| Show interface implementations | `SPC ms` | of word under the curor |
| Show signature | `SPC mi` | of word under the curor |


