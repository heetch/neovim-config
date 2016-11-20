call plug#begin('~/.config/nvim/plugged')

" Utils
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/gv.vim'
Plug 'junegunn/goyo.vim'
Plug 'airblade/vim-gitgutter'
"Plug 'tmux-plugins/vim-tmux' | Plug 'tmux-plugins/vim-tmux-focus-events'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Misc
Plug 'jceb/vim-orgmode'

" UI
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'    }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Languages

"" Clojure
"Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"Plug 'guns/vim-sexp', { 'for': 'clojure' }
"Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
"Plug 'neovim/node-host'
"Plug 'snoe/nvim-parinfer.js' ", { 'for': 'clojure' }

"" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'archSeer/elixir.nvim'

"" Go
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'nsf/gocode', {'rtp': 'nvim/'}
Plug 'fatih/vim-go'

"" Ruby
"Plug 'tpope/vim-bundler'
"Plug 'tpope/vim-rails'
"Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'

"" Javascript
Plug 'kchmck/vim-coffee-script'
Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

"" Swift
Plug 'keith/swift.vim'

"" Markdown
Plug 'tpope/vim-markdown'
"Plug 'junegunn/vim-xmark', { 'do': 'make' } " OSX only

"" HTML && CSS
Plug 'groenewege/vim-less'
"Plug 'slim-template/vim-slim'

"" Infra as code
Plug 'fatih/vim-hclfmt'

" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'endel/vim-github-colorscheme'
Plug 'romainl/Apprentice'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'antlypls/vim-colors-codeschool'
Plug 'w0ng/vim-hybrid'
Plug 'chriskempson/base16-vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'AlessandroYorba/Sierra'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'cbracken/vim-monochrome'

call plug#end()
