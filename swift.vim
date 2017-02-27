augroup FileType swift
  au!

  au FileType swift set makeprg=swift\ build errorformat=%f:%l:%c:\ %m,%-G%.%#
  au FileType swift nmap <leader><leader>c :make<CR>
  au FileType swift set keywordprg=~/.config/nvim/scripts/dashopen\ apple
augroup END
