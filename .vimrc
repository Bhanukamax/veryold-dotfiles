set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


Plugin 'scrooloose/nerdtree'
Plugin 'alvan/vim-closetag'
"Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/copypath.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'gregsexton/MatchTag'
Plugin 'vim-scripts/loremipsum'
Plugin 'tmhedberg/matchit'
Plugin 'carakan/new-railscasts-theme'
Plugin 'guns/xterm-color-table.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
"Plugin 'kien/rainbow_parentheses.vimkien'
"Plugin 'severin-lemaignan/vim-minimap'
Plugin 'koron/minimap-vim'
Plugin 'luochen1990/rainbow'
Plugin '2072/PHP-Indenting-for-VIm'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set nocompatible
syntax on
filetype plugin on
runtime macros/matchit.vim
set path+=**
"set foldcolumn=4
set hlsearch


" basic settings
let mapleader = ","

" iritators
" force jk for <Esc>
inoremap <Esc> <nop>
set number
set tabstop=4
set shiftwidth=4
set nowrap
set autoindent

" my mappings
noremap <C-t> :tabe<CR>
" duplicate line
noremap <leader>d <s-v>y<s-p>

" VIMRC edding test
nnoremap <leader>vs :source $MYVIMRC<CR>
nnoremap <leader>ve :vsplit $MYVIMRC<CR>

" edit .bash_profile
nnoremap <leader>be :e ~/.bash_profile<CR>


" saving and closing
"nnoremap <leader>wq :wq!<CR>
"nnoremap <leader>qa	:quitall!<CR>
"nnoremap <leader>w :w!<CR>
"nnoremap <leader>q :q!<CR>

"nnoremap <leader>q :q!<CR>
noremap <F2> :tabp<CR>
noremap <F3> :tabn<CR>

nnoremap - <s-o><Esc> 
nnoremap <space> viw

" save from insert mode
" inoremap jjj <esc>:w!<CR>A
" inoremap jjk <esc>:wq!<CR>
" inoremap kkk <esc>:q!<CR>
nnoremap <leader>kkk :q!<CR>
nnoremap <leader>jjj :w!<CR>
"nnoremap <leader>jjk :wq!<CR>

" case conversion in normal mode
nnoremap <c-u> viwU
nnoremap <c-l> viwu
nnoremap dd O<esc>jddk


" deleting lines below and above
nnoremap \ dd
nnoremap <c-\> kdd

" inoremap <c-d> <Esc>ddi


" CAS and DOGS TRY TO type
" NERDTree mappings
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>m :NERDTreeFind<CR>


" copy file path
nnoremap <leader>cp :CopyPath<CR>
nnoremap <leader>cf :CopyFileName<CR>



" past in insert mode
inoremap <c-p> <esc>pa

noremap <Leader>A  oanother line<Esc>

" re-indetn
nnoremap <leader>r :normal gg=G<CR>


" view commands
nnoremap <leader>o :only<CR>

" commenttin
inoremap <c-/> :vsp<CR>

" change window
nnoremap <tab> <c-w>w
nnoremap <s-tab> I<tab><esc>

" super H and L
nnoremap H 0
nnoremap L $

" insert mode special commands
inoremap jk <esc>


" return to normal mode from visual
vnoremap <leader>jk <esc>

" space in normal mode
nnoremap <leader><space> i<space><esc>

	" load bundles
" execute pathogen#infect()

" resize splits
nnoremap <s-F12> :res +2<CR>
nnoremap <s-F11> :res -2<CR>
nnoremap <F12> :vertical res +2<CR>
nnoremap <F11> :vertical res -2<CR>


nnoremap U :red<cr>
"nnoremap <leader>qq :qa<cr>


" inserting html comment tag
nnoremap <leader>/	I<!--<esc>A--><esc> 

" autoclosing file types
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php"
"let g:ctrlp_custom_ignore = 'node_modules'


nnoremap <leader>tw :set wrap!<CR>

" select all html between tags (inclusive)
" nnoremap <leader>a %

set wildmenu
set wildmode=list:full

set scrolloff=13
"nnoremap <leader>h <s-v><s-5>
"vnoremap <leader>h <s-5>



function! ToggleFoldCol()
	let fold=&foldcolumn
	if	fold<4
		:set foldcolumn=4 
	else
		:set foldcolumn&
	endif
endfunction

nnoremap <leader>fo :call ToggleFoldCol()<cr>

" got to previus file
nnoremap <leader>fb :e#<cr>
set smartindent
" reindet file
nnoremap <leader>fr :normal gg=G<cr>
set ignorecase


" select within tags
nnoremap <leader>sa :normal elV%<cr>
nnoremap <c-a> :normal V%<cr>


" yank the current line
nnoremap <leader>y Vye
" replace the line
nnoremap <leader>p Vp

" yank inside next double qoat
"onoremap i" :<c-u>normal! f"vi"<cr>

colorscheme ron
:hi TabLineSel ctermbg=LightBlue ctermfg=LightYellow


let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

"plugins to check
"rainbow paranthesis
"fugitive  vim
set autoindent
