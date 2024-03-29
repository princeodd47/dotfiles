" Install plug plugin manager if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax enable 
set background=dark 
" colorscheme guardian

" let g:solarized_termcolors=256
" set t_Co=256

set shiftwidth=4 tabstop=4 expandtab 
set laststatus=2 
set number 
set hidden 
set tags=./tags;,tags;$HOME 
set splitright
set splitbelow

call plug#begin('~/.vim/plugged')

" Add plugins here
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'elixir-editors/vim-elixir'
Plug 'sjl/gundo.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'kshenoy/vim-signature'
Plug 'tmhedberg/SimpylFold'

call plug#end()
filetype plugin indent on
" end plug config

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

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Search for trailing whitespace.
" nnoremap <F5> :/\s\+$<CR>
" Remove all trailing whitespace.
" nnoremap <F5><F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F6> gg=G
nnoremap <F7> :GundoToggle<CR>
  
map <C-n> <Esc>:tab sp<Cr> 
  
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 
autocmd Filetype eruby setlocal tabstop=2 shiftwidth=2 
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 
autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 
autocmd Filetype groovy setlocal tabstop=2 shiftwidth=2
autocmd Filetype yml setlocal tabstop=2 shiftwidth=2

autocmd Filetype make setlocal noexpandtab shiftwidth=8 softtabstop=0
au BufNewFile,BufRead Jenkinsfile setf groovy

" beautify json
command! PrettyPrintJSON %!python -m json.tool
command! PrettyPrintHTML !tidy -mi -html -wrap 0 %
command! PrettyPrintXML !tidy -mi -xml -wrap 0 %

" SimplylFold
" enable docstring preview in fold
let g:SimpylFold_docstring_preview = 1

" set nofoldenable    " disable folding
