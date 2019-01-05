" ### CTL-S Rebind for Saving Files
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

"######## Visual Configurations ########
inoremap vv <Esc>
syntax on
hi Comment ctermfg=gray
hi Statement ctermfg=green
hi Error ctermbg=red
set number
set ruler
color peachpuff
