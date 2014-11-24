" wreed vimrc
" vim: set foldmethod=marker:


"{{{ ***** PLUGINS INSTALLATION ***** "

" #####Vundle#####
set nocompatible
"required vundle setup
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/vundle'

" ***** plugins that require more stuff (compilation)
" As-you-type semantic completion. 
Plugin 'Valloric/YouCompleteMe', {'pinned': 1}

" ***** simple plugins
" can launch an interactive program within an Vim buffer (like bash or other shells)
Plugin 'oplatek/Conque-Shell'
" easy buffer management. Replaced by Unite
"Plugin 'jlanzarotta/bufexplorer'
" supposedly make '%' more powerful
Plugin 'tmhedberg/matchit'
" Provides awesome commenting shortcuts
Plugin 'scrooloose/nerdcommenter'
" Shows file browser. (replaces netrw and :Explore)
Plugin 'scrooloose/nerdtree'
" the Solarized colorscheme
Plugin 'altercation/vim-colors-solarized'
" show tabs up on top prettily 
Plugin 'mkitt/tabline.vim'
" shows an outline of all Tags in a file 
Plugin 'majutsushi/tagbar'
" Snippet completion
Plugin 'SirVer/ultisnips'
" Make vim priiiiity
Plugin 'bling/vim-airline'
" about 3 billion colorschemes
Plugin 'flazz/vim-colorschemes'
" Asynchonous building and launching of programs
Plugin 'tpope/vim-dispatch'
" Makes motions way better.  lets you jump anywhere on the screen
Plugin 'Lokaltog/vim-easymotion'
" Allows multiple cursors at once.  very useful
Plugin 'wreed4/vim-multiple-cursors'
" A library of snippets that work with Utilsnip
Plugin 'wreed4/vim-snippets'
" ability to surround text objects with things like quotes or parens
Plugin 'tpope/vim-surround'
" Amazing plugin that makes a lot of things obsolete...
Plugin 'unite.vim'

" end installed plugins

call vundle#end()
filetype plugin indent on

" #####Pathogen#####
" call pathogen#infect()
" call pathogen#helptags()

" }}}

"{{{ ***** PLUGIN SETTINGS ***** "

" #####PyMode##### 
"let pymode_lint_ignore="E501,E401,E225,W191,W391,W404"
" use rope code assist instead of a complete function
" au FileType python inoremap <expr> <S-Space> '<C-r>=RopeCodeAssistInsertMode()<CR><C-r>=pumvisible() ? "\<lt>C-p>\<lt>Down>" : ""<CR>'

" Tlist
" Toggle tag list
"nnoremap <C-T> :TlistToggle<CR>

" #####EasyMotion#####
nmap <Leader><Leader>s <Plug>(easymotion-sn)

" #####Tagbar##### 
let g:tagbar_autofocus = 1
let g:tagbar_left = 1
let g:tagbar_zoomwidth = 0
let g:tagbar_show_linenumbers = -1
let g:tagbar_foldlevel = 0
let g:tagbar_autoshowtag = 1

" open Tagbar automatically when viewing a supported file/files
"autocmd VimEnter * nested :call tagbar#autoopen(1)
" open Tagbar automatically when entering a buffer of supported file/files
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" Toggle Tagbar
nnoremap <leader>tt :TagbarToggle<CR>


" #####Airline#####
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_close_button =1

let g:airline#extensions#tagbar#flags = 'f'
let g:airline#extensions#tagbar#enabled = 1

let g:airline#extensions#whitespace#enabled = 0

let g:airline#extensions#tmuxline#enabled = 0


" #####NERDTree#####
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeDirArrows = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeMouseMode = 2
let g:NERDTreeShowLineNumbers = 1
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>


" #####NerdCommenter#####
imap <C-c> <plug>NERDCommenterInsert

" #####UltiSnips#####
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets/UltiSnips"


" #####CCTree#####
nnoremap <leader>ct :CCTreeWindowToggle<CR>

" #####ConqueTerm#####
let g:ConqueTerm_CloseOnEnd = 1
"Conque spits out an error about CursorHoldI making it run slow.  repress
"these warnings
let g:ConqueTerm_StartMessages = 0


" #####Pyclewn#####
" Only map keys if we're in Pyclewn
if has("netbeans_enabled")
    "nmap <silent> <C-p> :exe ":Cprint " .  expand("<cword>")<CR>
    nmap <silent> <C-p> "pyiw :Cprint <C-R>p<CR>
    nmap <silent> <C-x> :exe ":Cdbgvar " .  expand("<cword>")<CR>
    vmap <silent> <C-p> "py :Cprint <C-R>p<CR>
endif

" #####YouCompleteMe#####
" Open preview window when completing
let g:ycm_add_preview_to_completeopt = 0
" Auto Close preview window
let g:ycm_autoclose_preview_window_after_insertion = 1
" Disable Tab for cycling through commands so that UtilSnips will still work
let g:ycm_key_list_select_completion=['<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_key_invoke_completion = '<C-N>'
"let g:ycm_extra_conf_globlist = ['~/.ycm_extra_conf.py']
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_use_ultisnips_completer = 0

nnoremap <leader>] :YcmCompleter GoTo<CR>


" #####Multiple Cursors#####
let g:multi_cursor_exit_from_insert_mode = 0


" #####Unite#####
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<CR>
nnoremap <leader>e :<C-u>Unite -buffer-name=files -toggle file<CR>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru  -start-insert  file_mru<CR>
nnoremap <leader>y :<C-u>Unite -buffer-name=yank    history/yank<CR>
nnoremap <leader>be :<C-u>Unite -no-split -buffer-name=buffer buffer<CR>
nnoremap <leader>/ :<C-u>Unite -keep-focus -no-quit -buffer-name=search vimgrep:%<CR>
"
"Doesn't work.  Can't get plugins to play nice
"nnoremap <leader>t :<C-u>Unite -buffer-name=outline -start-insert outline<CR>


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
" turn vim's mode printing off.  Airline takes care of this
set noshowmode
" shorten the pause after leaving insert mode
set ttimeoutlen=50
" set mouse always on.  I like the mouse sometimes
set mouse=a
" 256 stuff
" disable BackgroundColorErase (BCE) inside of 256-color tmux sessions
if &term =~ '256color'
    set t_ut=
endif
" OR... do this shit instead
if &term =~ '^screen'
    " tmux will send xterm-style keys when xterm-keys is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" set utf8
set encoding=utf-8
set fileencoding=utf-8

" New Splits default to right, or below
set splitbelow
set splitright

"turn omnicomplete on
set omnifunc=syntaxcomplete#Complete

" }}}

"{{{ ***** VISUALS ***** "
" set number
set number
set relativenumber
"set foldmethod=syntax
"set foldcolumn=3

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set cindent

" Solarized settings
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=light
"set background=dark

" seoul256 settings
let g:seoul256_background = 236
colorscheme seoul256
let g:airline_theme="tomorrow"

"colorscheme carvedwoodcool
"colorscheme wombat256
"colorscheme zenburn
"colorscheme kolor
"colorscheme jellybeans
"colorscheme hybrid
"colorscheme bubblegum
"colorscheme devbox-dark-256
"colorscheme Tomorrow-Night-Eighties

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

" treat wrapped lines as multiple lines when navigating
map j gj
map k gk

" Scroll the window up and down more intuitively
nnoremap j <C-e>
nnoremap k <C-y>

" Open a new line and exit insert mode, staying on the same line
nnoremap <leader>o o<ESC>k
nnoremap <leader>O O<ESC>j

" Clean a line and exit insert mode
nnoremap <leader>c<CR> cc<ESC>

" Open tag in new tab
nnoremap <M-]> <C-W><C-]><C-W>T

" Toggle TODOs as done or not
nnoremap <silent> <leader>x :s/\[ \]TODO/[X]TODO/<CR>:nohl<CR>
nnoremap <silent> <leader><space> :s/\[X\]TODO/[ ]TODO/<CR>:nohl<CR>

" copy 'filename:linenumber' to @f register.  useful for adding links to
" places in files in comments
nnoremap <silent> <leader>gf :let @f=@% . ':' . line('.')<CR>


" WINDOW ORGANISATION
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-Up> <C-W>k
map <C-Down> <C-W>j
map <C-Left> <C-W>h
map <C-Right> <C-W>l

" easy resize windows
nnoremap <S-Up> <C-W>+
nnoremap <S-Down> <C-W>-
nnoremap <S-Left> 3<C-W><
nnoremap <S-Right> 3<C-W>>

" easy move windows
nnoremap <C-S-Up> <C-W><S-K>
nnoremap <C-S-Down> <C-W><S-J>
nnoremap <C-S-Left> <C-W><S-H>
nnoremap <C-S-Right> <C-W><S-L>

" }}}

"{{{ ***** PROJECTS ***** "

" set default project options
set makeprg=rfds 

command! -nargs=* MakeRelease Make build release
command! -nargs=* MakeDebug Make build debug
" }}}


"{{{ ***** FUNCTIONS ***** "
function! OpenDepotFile(version, fname)
    let f = "/home/dev/fonix/online/" . a:version . "/src/" . a:fname
    execute "argadd " . f
    execute "edit " . f
endfunction

function! DepotComplete(ArgLead, CmdLine, CursorPos)
    return "build \ndevel \nqa \nreleased \n" . system("ls /home/dev/fonix/online/qa/src/")
endfunction

" }}}


"{{{ ***** COMMANDS ***** " 
" make todo list
command! -nargs=* -complete=file Todos Unite -keep-focus -auto-resize -no-quit -buffer-name=Todos vimgrep:*:TODO(wreed)

"Wrapper for make sequence
"replaced by vim-dispatch plugin
"command! -nargs=* Make execute '!clear' | make! <args> | cw

" Perforce commands
command! -nargs=0 PerfEdit execute "!p4 edit %" 

" Open Depot File
command! -nargs=+ -complete=custom,DepotComplete OpenDepotFile call OpenDepotFile(<f-args>)

" Edit ~/.vimrc in a new tab
command! -nargs=0 EditVimrc tabedit ~/.vimrc

" }}}


"// [ ]TODO(wreed): shortcut to edit VMS files (with tab completion??)
"// [ ]TODO(wreed): shortcut to look at directory


