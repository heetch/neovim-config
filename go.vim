au BufRead,BufNewFile *.go set noet ts=4 sw=4

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

au FileType go nmap <leader>mr <Plug>(go-run)
au FileType go nmap <leader>mc <Plug>(go-build)
au FileType go nmap <leader>mq <Plug>(go-test)
au FileType go nmap <leader>mo <Plug>(go-coverage)
au FileType go nmap <Leader>mds <Plug>(go-def-split)
au FileType go nmap <Leader>mdv <Plug>(go-def-vertical)
au FileType go nmap <Leader>mdt <Plug>(go-def-tab)
au FileType go nmap <Leader>mgd <Plug>(go-doc)
au FileType go nmap <Leader>mgv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>mgb <Plug>(go-doc-browser)
au FileType go nmap <Leader>ms <Plug>(go-implements)
au FileType go nmap <Leader>mi <Plug>(go-info)


