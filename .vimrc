set hlsearch
set number
set relativenumber
set autoindent
"Allow usage of mouse in iTerm
"set mouse=a
set colorcolumn=100
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2

set cursorline

"status line format
set statusline =
set statusline +=%f\ %h%m%r%w
set statusline +=%y                                                  
set statusline +=\ %{fugitive#statusline()}
set statusline +=%=%-10L
set statusline +=%=%-14.(%l,%c%V%)\ %P

set nocompatible
set hidden

set noswapfile

"fold based on indent
set foldmethod=indent
"deepest fold is 10 levels
set foldnestmax=10
"dont fold by default
set nofoldenable
"this is just what i use
set foldlevel=1         

" To yank vim text to system clipboard
" also install vim-gtk using
" sudo apt-get install vim-gtk
set clipboard=unnamedplus

"To display Long line as just one line
"i.e (you have to scroll horizontally to see the entire line
set nowrap

"-------Mappings--------------"

" Map cntl + n to toggle NERDTree
map <C-n> :NERDTreeToggle<cr>
map <C-t> :call NumberToggle()<cr>

" clear screen before every command you run from vim
map :! :!clear;

" ,cs copies just the filename.
" ,cl copies the filename including it's full path. 
nmap ,cs :let @+=expand("%")<CR>
nmap ,cl :let @+=expand("%:p")<CR>


"--------Plugings-------------"

execute pathogen#infect()
syntax on
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim
filetype plugin on
"set omnifunc=syntaxcomplete#Complete

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=16
set t_Co=16 

"--Brandscope abbrivations-----"
iabbr PD Product
iabbr SB SizeBreak
iabbr BSB BuyplanSizeBreak
iabbr BR Brand
iabbr RL Release
iabbr PR ProductRelease
iabbr SM StockModel
iabbr SMI StockModelItem
iabbr SMSB StockModelSizeBreak
iabbr pry binding.pry

"------------------------------"
