<<<<<<< HEAD
" wreed vimrc
" vim: set foldmethod=marker:


"{{{ ***** VIM FEATURES ***** "
" allow project-specific .vimrc files
set exrc
set secure
" allow the use of a modeline
set modeline
" }}}

"{{{ ***** VISUALS ***** "
" set number
set relativenumber
" set foldmethod=syntax
set foldcolumn=3
=======
"  wreed vimrc

" set visual options
set number
set foldmethod=syntax
>>>>>>> e68403db8f74942c6ad9beb31a363e44b222c348

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set cindent
<<<<<<< HEAD
filetype indent plugin on

colorscheme koehler

set showcmd
"}}}

"{{{ ***** KEY MAPPINGS ***** "
set pastetoggle=<F2>
nmap <F12> :mks!
nmap <F4> :make!
" }}}

"{{{ ***** PROJECTS ***** "

" set default project options
set makeprg=rakefds
" }}}

"{{{ *****  PLUGINS  ***** "

" PyMode options
let pymode_lint_ignore="E501,E401,E225,W191,W391,W404"
" use rope code assist instead of a complete function
au FileType python inoremap <expr> <S-Space> '<C-r>=RopeCodeAssistInsertMode()<CR><C-r>=pumvisible() ? "\<lt>C-p>\<lt>Down>" : ""<CR>'
" }}}

=======

colorscheme koehler

" allow project-specific .vimrc files
set exrc
set secure

" set default project options
set makeprg=rakefds

"this is a comment
>>>>>>> e68403db8f74942c6ad9beb31a363e44b222c348
