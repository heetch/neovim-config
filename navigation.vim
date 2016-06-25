" Opens an edit command with the path of the currently edited file filled in Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Alternate between last opened buffers
map <Leader><Tab> <c-^>

" Close current buffer
map <Leader>c :bd<CR>

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" OS clipboard
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" Save
map <Leader>w :w<CR>

" Open tabs
map <C-w>t :tabnew<CR>

" Open tags
map <Leader>_ :TagbarToggle<CR>
" Display file tree
nmap <Leader>- :NERDTreeToggle<CR>

" Copy current buffer absolute path to system clipboard
nmap <Leader>%y :!echo % \| pbcopy<CR>

" Clean search
map //  :nohlsearch<CR>; echo 'Search highlight cleared' <CR>

" Fix Quickfix showing in the tagbar
"augroup tagbar-quickfix
"  autocmd!
"  autocmd FileType qf wincmd J
" augroup END

" Easily move around panes
nmap <silent> <Leader><left> :wincmd h<CR>
nmap <silent> <Leader><right> :wincmd l<CR>
nmap <silent> <Leader><up> :wincmd k<CR>
nmap <silent> <Leader><down> :wincmd j<CR>

" Focused reader
map <Leader>= :Goyo<CR>

" Fuzzy finder
map <silent> <Leader>f :FZF<CR>

" Find in project
map <silent> <Leader>F :Ag<CR>

" Fuzzy find current file tags
map <silent> <Leader>t :BTags<CR>

" Fuzzy find tags
map <silent> <Leader>t :Tags<CR>

" Fuzzy find marks
map <silent> <Leader>m :Marks<CR>

" Fuzzy find color themes
map <silent> <Leader>0 :Colors<CR>

" Complete whole filenames/lines with a quicker shortcut key in insert mode
inoremap <C-f> <C-x><C-f>
inoremap <C-l> <C-x><C-l>
