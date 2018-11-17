set nocompatible
syntax on

highlight ColorColumn ctermbg=0 guibg=lightgrey
set colorcolumn=101

set ignorecase
set laststatus=2
set noshowmode
set hlsearch
set cul
set lazyredraw
set ttyfast
set incsearch
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set ruler
set scrolloff=3
set smartcase
set mouse=a
set number
set clipboard=unnamed

autocmd BufWinLeave * call clearmatches()
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.graphql set filetype=graphql
autocmd VimResized * :wincmd =
"autocmd BufWritePre * :FixWhitespace
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx.snap set filetype=javascript.jsx
autocmd BufNewFile,BufReadPost *.coffee set filetype=coffee
autocmd BufNewFile,BufReadPost *.exs set filetype=elixir
autocmd BufNewFile,BufReadPost *.ex set filetype=elixir

set rtp+=$GOROOT/misc/vim
set rtp+=~/.vim/bundle/Vundle.vim/
if has('termguicolors')
  set termguicolors
endif

" let mapleader="\<Space>"
let mapleader = ","

let g:multi_cursor_exit_from_insert_mode=0
let g:ctrlp_working_path_mode = 'e'
let g:notes_directories = ['~/Documents/notes']
let g:NERDTreeWinSize = 50
let g:indentLine_faster = 1
let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#4c4c4b'
let g:jsx_ext_required = 0
let g:UltiSnipsExpandTrigger='<tab>'
let g:javascript_plugin_jsdoc = 1

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_left_sep = ''
let g:airline_right_sep= ''
let g:airline_section_c = ''
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = ''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0

"vim-markdown config
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['js=javascript', 'jsx=javascript']

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


" GitGutter
let g:gitgutter_max_signs = 50000

" Use local ESLint instead of global one
" let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
" let g:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" enable prettier for Javascript files
" let g:ale_fixers = {}
" let g:ale_fixers['javascript'] = ['prettier']
" let g:ale_fixers['json'] = ['prettier']
" let g:ale_fixers['scss'] = ['prettier']
" let g:ale_fixers['md'] = ['prettier']

let g:ale_fix_on_save = 0

map <leader>n :NERDTreeToggle<CR>
" map <leader>f :CtrlP<CR>
map <silent> <leader><cr> :noh<cr>
nmap <leader>w :w!<cr>
nmap <leader>a :Ack!<space>
nmap <leader>f :Ag!<space>
nmap <leader>m :MarkedOpen<cr>
nmap <up> gk
nmap <down> gj
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


"if exists('$TMUX')
"  set ttymouse=xterm2
"  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
"  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif

" `ag` configuration https://github.com/ggreer/the_silver_searcher
" overwrites ack and grep
" users ag to power ctrl+p
let g:ackprg = 'ag --nogroup --column --smart-case --ignore-dir=node_modules'
set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
let g:ctrlp_user_command = ['.git', 'ag %s -l --nocolor -g ""']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|storage\|vendor'
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"MY CONFIG
" VIMRC edding test
nnoremap <leader>vs :source $MYVIMRC<CR>
nnoremap <leader>ve :vsplit $MYVIMRC<CR>

" insert mode special commands
inoremap jk <esc>
" return to normal mode from visual
vnoremap <leader>jk <esc>
" clipboard
:inoremap <C-v> <ESC>"+pa<ESC>
:vnoremap <C-c> "+y
:vnoremap <C-x> "+d

noremap <C-t> :tabe<CR>
noremap <F2> :tabp<CR>
noremap <C-j> :tabp<CR>
noremap <F3> :tabn<CR>
noremap <C-k> :tabn<CR>
nnoremap <space> viw

" super H and L
nnoremap H 0
nnoremap L $

" Nerdtree
noremap <leader>m :NERDTreeFind<CR>
noremap <leader>d <s-v>y<s-p>
noremap <leader>p :echo @%<CR>

" Deleting
nnoremap \ dd

" Select withing brackets
"nnoremap <C-[> va}
"

" autoclosing file types
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php"

let g:rainbow_active = 1


" copy file path
":nmap <leader>c :let @" = expand("%")<cr>
nmap ,c :let @*=expand("%")<CR>
 "End MY CONFIG


if (has("termguicolors"))
  set termguicolors
endif


autocmd BufNewFile,BufRead *.tf set filetype=terraform


call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'luochen1990/rainbow'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'honza/dockerfile.vim'
Plugin 'tpope/vim-repeat'
Plugin 'ag.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'bling/vim-airline'
Plugin 'henrik/vim-indexed-search'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'danro/rename.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'junegunn/vim-easy-align'
Plugin 'rizzatti/dash.vim'
Plugin 'moll/vim-node'
Plugin 'Yggdroot/indentLine'
Plugin 'jparise/vim-graphql'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-lang/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'joshdick/onedark.vim'
"Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mru.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'reedes/vim-pencil'
Plugin 'plasticboy/vim-markdown'
Plugin 'hashivim/vim-terraform'
Plugin 'airblade/vim-gitgutter'
Plugin 'magicalbanana/sql-syntax-vim'
Plugin 'w0rp/ale'
Plugin 'Galooshi/vim-import-js'
call vundle#end()

colorscheme onedark
filetype on
filetype plugin on
filetype plugin indent on
