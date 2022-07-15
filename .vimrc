set nocompatible
set exrc
set noswapfile
set nobackup
set encoding=utf-8
set clipboard=unnamedplus
set mouse=a

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Vundlevim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'rking/ag.vim.git'
Plugin 'moll/vim-node.git'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'fatih/vim-go'
Plugin 'vim-utils/vim-man'
Plugin 'hotoo/jsgf.vim'
Plugin 'ackyshake/VimCompletesMe'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'lyuts/vim-rtags'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jacoborus/tender.vim'
Plugin 'tomasr/molokai'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'zivyangll/git-blame.vim'

call vundle#end()
filetype plugin indent on


colorscheme industry
set noerrorbells
set vb t_vb=
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set nowrap
set colorcolumn=80
set autochdir "sets the cwd to whatever file is in view. This allows better omni completion"
autocmd BufWritePre * %s/\s\+$//e

set hidden
let g:racer_cmd = "/home/donovan/.cargo/bin/racer"
let g:racer_experimental_completer = 1

"nerdtree"
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1

"go"
let g:go_fmt_command = "goimports"

" You complete me"
let g:ycm_key_list_select_completions=[]
let g:ycm_key_list_previous_completions=[]
let g:ycm_max_diagnostics_to_display=0
"debug stuff"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level= 'debug'
let g:ycm_warning_symbol = '.'
let g:ycm_server_use_vim_stdout = 1

"Let definitions"
let mapleader= " "
let g:ctrlp_user_command = ['.git/', 'git -- git.dir%s/.git ls-files -oc --exclude-standard']
let g:ag_working_path_mode="r"

if executable('ag')

    set greprg=ag\ --nogroup\ --nocolor\ --column

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    let g:ctrlp_use_caching = 0
endif


map - <C-W>-
map + <C-W>+

" remaps"
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nmap <leader>r :!tilix -a session-add-right<CR>
nmap <leader>d :!tilix -a session-add-down<CR>
nmap <leader>pf :CtrlP<CR>
nmap <leader>;; :w<CR>
nmap <leader>q :q<CR>
nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>pv :NERDTreeFind<CR>
nnoremap <silent> <leader>vr :vertical resize 30<CR>
nnoremap <silent> <leader>r+ :vertical resize +5<CR>
nnoremap <silent> <leader>r- :vertical resize -5<CR>
nmap <leader><leader> V
vmap <leader>y "+y
vmap <Leader>= <C-W><C-=>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>fg :YcmCompleter FixIt<CR>


nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

"alias"
let python='python3'
