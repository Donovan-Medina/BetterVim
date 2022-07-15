# BetterVim
vimrc that has plugins and remaps that make it easier to navigate and create clean code using vim
Installs:
- vim-gtk3 (for clipboard support)
- vundle (for plugin configurations)
- cmake (for YouCompleteMe plugin)

## plugins:
- 'Vundlevim/Vundle.vim'
- 'scrooloose/nerdtree'
- 'ctrlpvim/ctrlp.vim.git'
- 'rking/ag.vim.git'
- 'moll/vim-node.git'
- 'rust-lang/rust.vim'
- 'racer-rust/vim-racer'
- 'fatih/vim-go'
- 'vim-utils/vim-man'
- 'hotoo/jsgf.vim'
- 'ackyshake/VimCompletesMe'
- 'ycm-core/YouCompleteMe'
- 'lyuts/vim-rtags'
- 'leafgarland/typescript-vim'
- 'tpope/vim-fugitive'
- 'jacoborus/tender.vim'
- 'tomasr/molokai'
- 'artur-shaik/vim-javacomplete2'
- 'zivyangll/git-blame.vim'


## remaps at a glance
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

# alias
let python='python3'
