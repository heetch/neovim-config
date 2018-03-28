set nocompatible

" ----------------------------------------------------------------------------
" Load plugins
" ----------------------------------------------------------------------------
source ~/.config/nvim/dependencies.vim

" ----------------------------------------------------------------------------
" Base config
" ----------------------------------------------------------------------------
filetype plugin indent on
syntax on

set number
set ruler
set encoding=utf-8
set hidden
set mouse=a
set colorcolumn=120

" Tab character settings
set linebreak
set scrolloff=3
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" History settings
" Store lots of :cmdline history
set history=1000
" Store marks on up to 100 files
set viminfo='100,f1

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Tab (:e .. ) completion
set browsedir=buffer                  " browse files in same dir as open file
set wildmenu                          " Enhanced command line completion.
set wildmode=list:longest,full        " Complete files using a menu AND list
set wildignorecase
" ignore outputs, VCS
set wildignore+=.git,.hg,.svn
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*.gem
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,.lock,.DS_Store,._*

" Remember last location in file
"au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"      \| exe "normal g'\"" | endif


" Define backup directory
set backupdir=~/.nvim/swap,/tmp,.
set directory=~/.nvim/swap,/tmp,.

" ban arrows movements
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

" ----------------------------------------------------------------------------
" Leader
" ----------------------------------------------------------------------------
let mapleader="\<SPACE>"
nnoremap <Space> <nop>

" ----------------------------------------------------------------------------
" Remember cursor position
" ----------------------------------------------------------------------------
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" ----------------------------------------------------------------------------
" Fix regexpes http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" ----------------------------------------------------------------------------
nnoremap / /\v
vnoremap / /\v

" ----------------------------------------------------------------------------
" Removes trailing spaces Leader
" ----------------------------------------------------------------------------

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

augroup trim-white-spaces
  autocmd!
  autocmd FileWritePre    * :call TrimWhiteSpace()
  autocmd FileAppendPre   * :call TrimWhiteSpace()
  autocmd FilterWritePre  * :call TrimWhiteSpace()
  autocmd BufWritePre     * :call TrimWhiteSpace()
augroup END

source ~/.config/nvim/qf.vim
source ~/.config/nvim/ruby.vim
source ~/.config/nvim/make.vim
source ~/.config/nvim/python.vim
source ~/.config/nvim/go.vim
source ~/.config/nvim/swift.vim
source ~/.config/nvim/objc.vim

source ~/.config/nvim/git.vim
source ~/.config/nvim/json.vim
source ~/.config/nvim/ui.vim
source ~/.config/nvim/navigation.vim
source ~/.config/nvim/autocomplete.vim

" Life saver: display invisible chars
command ShowUtf8 /[^[:print:]]

command Cheat :term! less +31 ~/.config/nvim/README.md
" Store your personal settings there (colors, etc)
if !empty(glob("~/.config/nvim/private.vim"))
  source ~/.config/nvim/private.vim
endif
