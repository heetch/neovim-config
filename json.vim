augroup FileType json
  au!

  " Check if jq is present in $PATH
  if executable("jq")
    " To indent json files on save
    au FileType json autocmd BufWritePre <buffer> %!jq -S '.'
  endif
augroup END
