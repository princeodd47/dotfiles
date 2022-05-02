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

" lua config files
lua require('keymapper')
lua require('lsp')
lua require('plugins')
lua require('treesitter')

"devicons config
set encoding=UTF-8

" air-line font config
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

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
