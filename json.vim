augroup FileType json
  au!

  " Check if jq is present in $PATH
  if executable("jq")
    " To indent and format json files
    au FileType json nmap <leader><leader>l :%!jq -S '.'<CR>
  endif
augroup END
