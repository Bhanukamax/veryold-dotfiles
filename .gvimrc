" editing gvimrc
nnoremap <leader>ge :vsplit $MYGVIMRC<cr>
nnoremap <leader>gs :source $MYGVIMRC<cr> 
color desert
color new-railscasts
"source ~\.vim\autoload\macvim-light.vim
"colorscheme macvim-light
set vb t_vb=
set backspace=2
"set guioptions-=m
"set guioptions-=T
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

"nnoremap <leader>k yiw:s<c-f>o/<esc>pa

