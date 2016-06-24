syntax sync minlines=256
set synmaxcol=300
set re=1
set lazyredraw

" Disable git gutter by default
let g:gitgutter_enabled = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_map_keys = 0


map <Leader>ug :GitGutterToggle<CR>

" Hide vertical split separator
hi VertSplit ctermfg=8 ctermbg=8

"" Statusline, source: https://gitlab.com/sshbio/dot/snippets/13567

set laststatus=2

function StatusHighlight(mode, active)
    hi StatusWarning ctermbg=136 ctermfg=235 term=none cterm=none

    if a:active == 0
        hi StatusMode ctermbg=235 ctermfg=240 term=bold cterm=bold
        hi StatusLeft ctermbg=235 ctermfg=240 term=none cterm=none
        hi StatusMiddle ctermbg=233 ctermfg=240 term=none cterm=none
        hi StatusRight1 ctermbg=241 ctermfg=235 term=none cterm=none
        hi StatusRight2 ctermbg=235 ctermfg=240 term=none cterm=none
        return ' '

    elseif a:mode == 'n' || a:mode == 'c'
        hi StatusMode ctermbg=148 ctermfg=22 term=bold cterm=bold
        hi StatusLeft ctermbg=240 ctermfg=231 term=none cterm=none
        hi StatusMiddle ctermbg=236 ctermfg=247 term=none cterm=none
        hi StatusRight1 ctermbg=252 ctermfg=241 term=none cterm=none
        hi StatusRight2 ctermbg=240 ctermfg=250 term=none cterm=none
        return 'N'

    elseif a:mode == 'i'
        hi StatusMode ctermbg=231 ctermfg=23 term=bold cterm=bold
        hi StatusLeft ctermbg=31 ctermfg=231 term=none cterm=none
        hi StatusMiddle ctermbg=24 ctermfg=117 term=none cterm=none
        hi StatusRight1 ctermbg=117 ctermfg=23 term=none cterm=none
        hi StatusRight2 ctermbg=31 ctermfg=117 term=none cterm=none
        return 'I'

    elseif a:mode == 'R' || a:mode == 't'
        hi StatusMode ctermbg=160 ctermfg=231 term=bold cterm=bold
        hi StatusLeft ctermbg=240 ctermfg=231 term=none cterm=none
        hi StatusMiddle ctermbg=236 ctermfg=247 term=none cterm=none
        hi StatusRight1 ctermbg=252 ctermfg=241 term=none cterm=none
        hi StatusRight2 ctermbg=240 ctermfg=250 term=none cterm=none
        return a:mode == 'R' ? 'R' : 'T'

    elseif a:mode == 'v' || a:mode == 'V' || a:mode == ''
        hi StatusMode ctermbg=208 ctermfg=88 term=bold cterm=bold
        hi StatusLeft ctermbg=240 ctermfg=231 term=none cterm=none
        hi StatusMiddle ctermbg=236 ctermfg=247 term=none cterm=none
        hi StatusRight1 ctermbg=252 ctermfg=241 term=none cterm=none
        hi StatusRight2 ctermbg=240 ctermfg=250 term=none cterm=none
        return a:mode == 'v' ? 'V' : a:mode == 'V' ? 'V' : 'V'

    else
        return a:mode
    endif
endfunction

" Pairing status
let s:pairing_first = 0
let s:pairing_second = 0

function ToggleFirst()
  if s:pairing_first == 0
    let s:pairing_first = 1
  else
    let s:pairing_first = 0
  endif
endfunction

function ToggleSecond()
  if s:pairing_second == 0
    let s:pairing_second = 1
  else
    let s:pairing_second = 0
  endif
endfunction

map <silent> <F11> :call ToggleFirst()<CR>
map <silent> <F12> :call ToggleSecond()<CR>
imap <silent> <F11> <ESC>:call ToggleFirst()<CR>i
imap <silent> <F12> <ESC>:call ToggleSecond()<CR>i
vmap <silent> <F11> :call ToggleFirst()<CR>
vmap <silent> <F12> :call ToggleSecond()<CR>

function PairingStatus()
  let status = ''

  if s:pairing_first == 1
    let status .= ' JHC '
  endif

  if s:pairing_second == 1
    let status .= ' FLO '
  endif

  return status
endfunction


function StatusGit()
    let symbols = ['+', '~', '-']
    let hunks = GitGutterGetHunkSummary()
    let ret = []

    for i in [0, 1, 2]
        if hunks[i] > 0
            call add(ret, symbols[i] . hunks[i])
        endif
    endfor

    let git = join(ret, ' ') . ' ⎇ ' . fugitive#head()

    return fugitive#head() != '' && winwidth('.') > 70 ? git : ''
endfunction

function Status(active)
    let status = '%#StatusMode# %{StatusHighlight(mode(), ' .a:active .')} '
                \'%#StatusLeft#'
                \ .' %{fnamemodify(expand(''%''), '':~:.'')}%w%q%h%r%<%m '
                \ .'%#StatusMiddle#'

    if a:active == 1
        let status .= ' %{StatusGit()}'
    endif

    let status .= ' %#ErrorMsg#%{PairingStatus()}%*'

    if &filetype != 'netrw' && &filetype != 'undotree'
        let status .= '%=' .' %{&fileencoding} | %{&fileformat} '
                    \  .'%#StatusRight2# %{&filetype} '
                    \  .'%#StatusRight1# %p%% %l:%c '
                    \  .'%#StatusWarning%{SyntasticStatuslineFlag()}'
    endif


    return status
endfunction

function StatusUpdate()
    for n in range(1, winnr('$'))
        let s = winnr('$') == 1 ? [Status(1)] : [Status(1), Status(0)]
        call setwinvar(n, '&statusline', s[n!=winnr()])
    endfor
endfunction

augroup status-update
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter,BufUnload * call StatusUpdate()
augroup END
