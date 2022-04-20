syntax enable
set background=dark

set number 
set hidden 

" Split config
set splitright
set splitbelow

" Indention config
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab 
set laststatus=2 

" Packer plugin manager
" install directory: ~/.local/share/nvim/site/pack/packer/start
lua require('plugins')
lua require('keymapper')

" Additional escape key for staying on home row
imap jk <Esc>

"Disable arrow keys
map <Up> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <Down> <Nop>

" Split shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" SimplylFold
" enable docstring preview in fold
let g:SimpylFold_docstring_preview = 1

" set tags=./tags;,tags;$HOME 

" Opens current file in new tabe
" map <C-n> <Esc>:tab sp<Cr>

" Search for trailing whitespace.
" nnoremap <F5> :/\s\+$<CR>
" Remove all trailing whitespace.
" nnoremap <F5><F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" nnoremap <F6> gg=G
" nnoremap <F7> :GundoToggle<CR>
  
" File specific indentions
" autocmd Filetype html setlocal tabstop=2 shiftwidth=2 
" autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 
" autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 
" autocmd Filetype eruby setlocal tabstop=2 shiftwidth=2 
" autocmd Filetype css setlocal tabstop=2 shiftwidth=2 
" autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 
" autocmd Filetype groovy setlocal tabstop=2 shiftwidth=2
" autocmd Filetype yml setlocal tabstop=2 shiftwidth=2
" autocmd Filetype make setlocal noexpandtab shiftwidth=8 softtabstop=0
" au BufNewFile,BufRead Jenkinsfile setf groovy

" beautify json
" command! PrettyPrintJSON %!python -m json.tool
" command! PrettyPrintHTML !tidy -mi -html -wrap 0 %
" command! PrettyPrintXML !tidy -mi -xml -wrap 0 %

" set nofoldenable    " disable folding
