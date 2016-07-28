augroup go-tab-settings
  autocmd!
  au BufRead,BufNewFile *.go set noet ts=4 sw=4
augroup END

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"



augroup FileType go
  au!

  let g:fzf_tags_command = 'gotags -R . > tags'

  au FileType go nmap <leader><leader>r <Plug>(go-run)
  au FileType go nmap <leader><leader>c <Plug>(go-build)
  au FileType go nmap <leader><leader>t <Plug>(go-test)
  au FileType go nmap <leader><leader>o <Plug>(go-coverage)
  au FileType go nmap <Leader><leader>ds <Plug>(go-def-split)
  au FileType go nmap <Leader><leader>dv <Plug>(go-def-vertical)
  au FileType go nmap <Leader><leader>dt <Plug>(go-def-tab)
  au FileType go nmap <Leader><leader>gd <Plug>(go-doc)
  au FileType go nmap <Leader><leader>gv <Plug>(go-doc-vertical)
  au FileType go nmap <Leader><leader>gb <Plug>(go-doc-browser)
  au FileType go nmap <Leader><leader>s <Plug>(go-implements)
  au FileType go nmap <Leader><leader>i <Plug>(go-info)
augroup END

