syntax on
colorscheme pablo
set background=dark

set backspace=1
set number relativenumber
set shiftwidth=2 tabstop=2 noexpandtab
set autoindent smarttab
set list listchars=trail:_,tab:>\ 

highlight MatchParen ctermbg=blue
highlight Normal ctermbg=None

" Tab Bindings
nnoremap <silent> <Esc>t :tabedit<CR>
nnoremap <Esc>1 1gt
nnoremap <Esc>2 2gt
nnoremap <Esc>3 3gt
nnoremap <Esc>4 4gt
nnoremap <Esc>5 5gt
nnoremap <Esc>6 6gt
nnoremap <Esc>7 7gt
nnoremap <Esc>8 8gt
nnoremap <Esc>9 9gt

" Split Bindings
nnoremap <silent> <Esc>s :vsplit<CR>
nnoremap <silent> <Esc>S :split<CR>
nnoremap <Esc>h <C-w>h
nnoremap <Esc>j <C-w>j
nnoremap <Esc>k <C-w>k
nnoremap <Esc>l <C-w>l

" Misc Bindings
nnoremap z za
nnoremap <silent> <Esc>e :e .<CR>
nnoremap <silent> <Esc>c :ColorToggle<CR>
nnoremap <silent> <Esc>v :set number! relativenumber! list! paste!<CR>
nnoremap <silent> <Esc>q :q<CR>

set exrc
