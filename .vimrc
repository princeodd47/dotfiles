syntax on 
set background=dark 

let g:solarized_termcolors=256
set t_Co=256
" colorscheme solarized

set shiftwidth=4 tabstop=4 expandtab 
set laststatus=2 
set number 
set hidden 
set tags=./tags;,tags;$HOME 
set colorcolumn=80

" begin vundle config
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'elixir-editors/vim-elixir'

call vundle#end()
filetype plugin indent on
" end vundle config

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
map <C-n> <Esc>:tab sp<Cr>
map <Up> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <Down> <Nop>
imap jk <Esc>
  
map <C-n> <Esc>:tab sp<Cr> 
  
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 
autocmd Filetype eruby setlocal tabstop=2 shiftwidth=2 
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 
autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 

autocmd Filetype make setlocal noexpandtab shiftwidth=8 softtabstop=0
au BufNewFile,BufRead Jenkinsfile setf groovy
