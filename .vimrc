" basic settings
let mapleader = ","

" iritators
" force jk for <Esc>
inoremap <Esc> <nop>
set number
set tabstop=4
set shiftwidth=4
set nowrap

" my mappings
noremap <C-t> :tabe<CR>
" duplicate line
noremap <leader>d <s-v>y<s-p>

" VIMRC edding test
nnoremap <leader>vs :source $MYVIMRC<CR>
nnoremap <leader>ve :vsplit $MYVIMRC<CR>

" edit .bash_profile
nnoremap <leader>be :e ~/.bash_profile<CR>

nnoremap <leader>wq :wq!<CR>
nnoremap <leader>qa	:quitall!<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>

nnoremap <leader>q :q!<CR>
noremap <F2> :tabn<CR>

nnoremap - <s-o><Esc> 
nnoremap <space> viw
 
" case conversion in normal mode
nnoremap <c-u> viwU
nnoremap <c-l> viwu
nnoremap dd O<esc>jddk

nnoremap \ dd
nnoremap <c-\> kdd

inoremap <c-d> <Esc>ddi


" CAS and DOGS TRY TO type
" NERDTree mappings
noremap <F10> :NERDTreeToggle<CR>
noremap <leader>n :NERDTreeToggle<CR>
noremap <F9> :NERDTreeFind<CR>
noremap <leader>m :NERDTreeFind<CR>



noremap <Leader>A  oanother line<Esc>


" view commands
nnoremap <leader>o :only<CR>
	" change window
	nnoremap <tab> <c-w>w

" super H and L
nnoremap H 0
nnoremap L $

" insert mode special commands
inoremap jk <esc>
inoremap jjj <esc>:w!<CR>
inoremap kkk <esc>:q!<CR>



" return to normal mode from visual
vnoremap <leader>jk <esc>

execute pathogen#infect()


" from mccc
" Leader Mappings
" map <Space> <leader>
"	map <Leader>w :update<CR>
"	map <Leader>q :qall<CR>
"	map <Leader>gs :Gstatus<CR>
"	map <Leader>gc :Gcommit<CR>
"	map <Leader>gp :Gpush<CR>
