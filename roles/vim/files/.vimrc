execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme default
let g:indent_guides_enable_on_vim_startup = 1
set ts=2 sw=2 et
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=grey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=red ctermbg=black
autocmd FileType python setlocal shiftwidth=2 tabstop=2
set laststatus=2
map <F4> :NERDTreeToggle<CR>
map <F5> :NERDTreeFind<CR>
nnoremap <F6> :set nonumber!<CR>
nnoremap <F7> :GundoToggle<CR>
nnoremap <F8> :set nocursorcolumn!<CR>
set cursorline
set number

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=black
" highlighting
" show trailing spaces as errors
:autocmd Syntax * syn match Error /\s\+$\| \+\ze\t/ containedin=ALL display

" show tabs as errors
:autocmd Syntax * syn match Error /\t/ containedin=ALL display


"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1

"Undo tree
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo:

"Save files when loosing focus (leave window)
:au FocusLost * silent! wa
"
"Unbind arrows
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
"No escape!
:imap jj <Esc>
" No delay on esc
set timeoutlen=1000
set ttimeoutlen=0
" Powerline
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:Powerline_symbols = 'fancy'
