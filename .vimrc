set nocompatible              " be iMproved, required
filetype on                   " required for compatibility with Mac OS X, See issue #167
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
"Plugin 'jelera/vim-javascript-syntax'
Bundle 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax enable

colorscheme solarized
set background=dark

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
"set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ruler

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" move to beginning/end of line
" nnoremap B ^
" nnoremap E $

" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" add json formatting
autocmd BufNewFile,BufRead *.json,*js set ft=javascript

"augroup configgroup
"    autocmd!
"    autocmd VimEnter * highlight clear SignColumn
"    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"                \:call <SID>StripTrailingWhitespaces()
"    autocmd FileType java setlocal noexpandtab
"    autocmd FileType java setlocal list
"    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType php setlocal expandtab
"    autocmd FileType php setlocal list
"    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType ruby setlocal tabstop=2
"    autocmd FileType ruby setlocal shiftwidth=2
"    autocmd FileType ruby setlocal softtabstop=2
"    autocmd FileType ruby setlocal commentstring=#\ %s
"    autocmd FileType python setlocal commentstring=#\ %s
"    autocmd BufEnter *.cls setlocal filetype=java
"    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"    autocmd BufEnter Makefile setlocal noexpandtab
"    autocmd BufEnter *.sh setlocal tabstop=2
"    autocmd BufEnter *.sh setlocal shiftwidth=2
"    autocmd BufEnter *.sh setlocal softtabstop=2
"augroup END


