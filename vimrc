set nocompatible
set backspace=2
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%82v')
filetype plugin indent on
set tabstop=4
set shiftwidth=4
nnoremap <S-Tab> <<
nnoremap <Tab> >>
inoremap <S-Tab> <C-d>
set expandtab
set bg=dark
set history=1000
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set title
set scrolloff=5
set visualbell
syntax enable
set mouse=a

set t_Co=256

call plug#begin('~/.vim/plugged')

Plug 'gilgigilgil/anderson.vim'
Plug 'vim-scripts/guicolorscheme.vim'
Plug 'vim-syntastic/syntastic'
Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

colorscheme desert256

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Better :sign interface symbols
let g:syntastic_error_symbol = '!!'
let g:syntastic_warning_symbol = '??'
let g:syntastic_python_python_exec = '/usr/bin/python3'

set foldmethod=syntax  
set foldnestmax=1
set nofoldenable
set foldlevel=1

" Arcane magic to make Cygwin use a block cursor in normal mode
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Because I can't type well
:command WQ wq
:command Wq wq
:command W w
:command Q q
