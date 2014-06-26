" wreed vimrc
" vim: set foldmethod=marker:

"{{{ *****  PLUGINS  ***** "

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" PyMode options
let pymode_lint_ignore="E501,E401,E225,W191,W391,W404"
" use rope code assist instead of a complete function
" au FileType python inoremap <expr> <S-Space> '<C-r>=RopeCodeAssistInsertMode()<CR><C-r>=pumvisible() ? "\<lt>C-p>\<lt>Down>" : ""<CR>'

" }}}

"{{{ ***** VIM FEATURES ***** "
" allow project-specific .vimrc files
set exrc
set secure
" allow the use of a modeline
set modeline
" automatically read a file if it changes outside of vim
set autoread
" turn ruler on
set ruler
" set incremental search
set incsearch
" set status line always on
set laststatus=2

" }}}

"{{{ ***** VISUALS ***** "
" set number
set relativenumber
set foldmethod=syntax
set foldcolumn=3

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set cindent
filetype plugin indent on

colorscheme carvedwoodcool
syntax on

set showcmd
"}}}

"{{{ ***** KEY MAPPINGS ***** "
set pastetoggle=<F2>
nmap <F12> :mks!
nmap <F4> :make!

" treat wrapped lines as multiple lines when navigating
map j gj
map k gk
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" }}}

"{{{ ***** PROJECTS ***** "

" set default project options
set makeprg=rakefds
" }}}

