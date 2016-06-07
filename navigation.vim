" Opens an edit command with the path of the currently edited file filled in Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Alternate between last opened buffers
map <Leader><Tab> <c-^>

" OS clipboard
vnoremap <leader>y "+y
nnoremap <leader>p "+p

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
autocmd FileType qf wincmd J

" Focused reader
map <Leader>= :Goyo<CR>

map <silent> <Leader>f :FZF<CR>
map <silent> <Leader>F :Ag<CR>
map <silent> <Leader><CR> :Buffers<CR>
map <silent> <Leader>m :Marks<CR>
map <silent> <Leader>0 :Colors<CR>
