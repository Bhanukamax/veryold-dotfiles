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
nnoremap <leader>wq :wq!<CR>
nnoremap <leader>qa	:quitall!<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>

nnoremap <leader>q :q!<CR>
noremap <F2> :tabn<CR>

nnoremap - <s-o><Esc> 
nnoremap <space> viw

" save from insert mode
inoremap jjj <esc>:w!<CR>A


" case conversion in normal mode
nnoremap <c-u> viwU
nnoremap <c-l> viwu
nnoremap dd O<esc>jddk


" deleting lines below and above
nnoremap \ dd
nnoremap <c-\> kdd

inoremap <c-d> <Esc>ddi


" CAS and DOGS TRY TO type
" NERDTree mappings
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>m :NERDTreeFind<CR>


" copy file path
nnoremap <leader>cp :CopyPath<CR>
nnoremap <leader>cf :CopyFileName<CR>



" past in insert mode
inoremap <c-p> <esc>pi

noremap <Leader>A  oanother line<Esc>

" re-indetn
nnoremap <leader>r :normal gg=G<CR>


" view commands
nnoremap <leader>o :only<CR>

" commenttin
inoremap <c-/> :vsp<CR>
nnoremap <leader>/ :echo 'wowz'<CR>

" change window
nnoremap <tab> <c-w>w

" super H and L
nnoremap H 0
nnoremap L $

" insert mode special commands
inoremap jk <esc>


" return to normal mode from visual
vnoremap <leader>jk <esc>


	" load bundles
execute pathogen#infect()


