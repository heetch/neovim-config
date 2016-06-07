" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
au BufRead,BufNewFile {build.boot}    set ft=clojure

" doubt it's necessary
" let g:ruby_path = system('echo $HOME/.rbenv/shims')
