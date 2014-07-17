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

" Tlist
" Toggle tag list
" nnoremap <C-T> :TlistToggle<CR>

" Tagbar options
let g:tagbar_autofocus = 1
let g:tagbar_left = 1
let g:tagbar_zoomwidth = 0
let g:tagbar_autofocus = 1

" open Tagbar automatically when viewing a supported file/files
autocmd VimEnter * nested :call tagbar#autoopen(1)

" Toggle Tagbar
nnoremap <C-T> :TagbarToggle<CR>

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
set hlsearch
set incsearch
" set status line always on
set laststatus=2

"turn omnicomplete on
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" }}}

"{{{ ***** VISUALS ***** "
" set number
set number
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

"colorscheme carvedwoodcool
colorscheme wombat256
"colorscheme devbox-dark-256
"set background=light
"colorscheme solarized

syntax on

set showcmd
"}}}

"{{{ ***** KEY MAPPINGS ***** "
" make backspace work
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set whichwrap+=<,>,h,l

set pastetoggle=<F2>
nmap <F12> :mks!<CR>
nnoremap <F3> :MakeRelease<CR><CR>
nnoremap <F4> :MakeDebug<CR><CR>
nnoremap <F5> :so ~/.vimrc<CR>

" look up things in opengrok
noremap <leader>K :call OpenGrok()<CR>
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
set makeprg=rfds 

command! -nargs=* MakeRelease Make build release
command! -nargs=* MakeDebug Make build debug
" }}}


"{{{ ***** FUNCTIONS ***** "
" open OpenGrok in midori
function! OpenGrok()
    :!midori http://opengrok.factset.com/source/search?defs=<cword>&project=%2Fonline%2Fmakefds<CR>
endfunction

" }}}


"{{{ ***** COMMANDS ***** " 
" make todo list
command! -nargs=* -complete=file Todos vimgrep /asdf:/gj *|cw

"Wrapper for make sequence
command! -nargs=* Make execute '!clear' | make! <args> | cw
" }}}
