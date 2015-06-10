" wreed vimrc
" vim: set foldmethod=marker:

"enable python
python << end
import vim
end

"{{{ ***** PLUGINS INSTALLATION ***** "

" ##### vim-plug #####
set nocompatible
call plug#begin('~/.vim/bundle')

" ***** plugins that require more stuff (compilation)
" As-you-type semantic completion. 
Plug 'Valloric/YouCompleteMe', { 'frozen': 1, 'on': ['YcmCompleter', 'YcmDiags', 'YcmForceCompileAndDiagnostics'] } 
autocmd! User YouCompleteMe call youcompleteme#Enable()


" ***** simple plugins
" can launch an interactive program within an Vim buffer (like bash or other shells)
Plug 'oplatek/Conque-Shell', { 'on': ['ConqueTerm', 'ConqueTermSplit', 'ConqueTermVSplit']}
" easy buffer management. Replaced by Unite
"Plugin 'jlanzarotta/bufexplorer'
" supposedly make '%' more powerful
Plug 'tmhedberg/matchit'
" Provides awesome commenting shortcuts
Plug 'scrooloose/nerdcommenter'
" Shows file browser. (replaces netrw and :Explore)
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
" the Solarized colorscheme
Plug 'altercation/vim-colors-solarized'
" show tabs up on top prettily 
Plug 'mkitt/tabline.vim'
" shows an outline of all Tags in a file 
Plug 'majutsushi/tagbar'
" Snippet completion
Plug 'SirVer/ultisnips', { 'on': []}
" Make vim priiiiity
Plug 'bling/vim-airline'
" about 3 billion colorschemes
Plug 'flazz/vim-colorschemes'
" Asynchonous building and launching of programs
Plug 'tpope/vim-dispatch'
" Makes motions way better.  lets you jump anywhere on the screen
Plug 'Lokaltog/vim-easymotion'
" Allows multiple cursors at once.  very useful
Plug 'wreed4/vim-multiple-cursors'
" Dependency for vim-snippets
Plug 'tomtom/tlib_vim'
" A library of snippets that work with Utilsnip
Plug 'wreed4/vim-snippets'
" ability to surround text objects with things like quotes or parens
Plug 'tpope/vim-surround'
" Amazing plugin that makes a lot of things obsolete...
Plug 'unite.vim'
" Make Tmux pretty
Plug 'edkolev/tmuxline.vim'
" switch between header files easily
Plug 'a.vim'
" pretty JSON stuff
Plug 'elzr/vim-json'
" Diff directories quickly and powerfully
Plug 'DirDiff.vim'
" Enable nested vimrc files
Plug 'wreed4/vim-lvimrc'
" Gives a graphical view of vim's undo tree (replaced by neovim-compatible
" fork)
"Plugin 'sjl/gundo.vim'
Plug 'simnalamburt/vim-mundo'
" New colorscheme
Plug 'morhetz/gruvbox'
" Git integration
Plug 'tpope/vim-fugitive'
" Matching things in insert mode
Plug 'Raimondi/delimitMate'
" Easy alignment
Plug 'junegunn/vim-easy-align'



" end installed plugins
call plug#end()

augroup load_us_ycm
    autocmd! 
    autocmd! InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
                        \| call youcompleteme#Enable() | autocmd! load_us_ycm
augroup END





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

let g:airline#extensions#tmuxline#enabled = 1


" #####NERDTree#####
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeMouseMode = 2
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeIgnore=['\~$', '\.vim$', '\.d$', '\.sw.$']
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>


" #####NerdCommenter#####
imap <C-c> <plug>NERDCommenterInsert

let g:NERDSpaceDelims = 1


" #####UltiSnips#####
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<C-@>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"



" #####CCTree#####
nnoremap <leader>ct :CCTreeWindowToggle<CR>

" #####ConqueTerm#####
let g:ConqueTerm_CloseOnEnd = 1
"Conque spits out an error about CursorHoldI making it run slow.  repress
"these warnings
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_ToggleKey = '<F8>'


" #####Pyclewn#####
" Only map keys if we're in Pyclewn
if has("netbeans_enabled")
    "nmap <silent> <C-p> :exe ":Cprint " .  expand("<cword>")<CR>
    nmap <silent> <C-p> "pyiw :Cprint <C-R>p<CR>
    nmap <silent> <C-x> :exe ":Cdbgvar " .  expand("<cword>")<CR>
    vmap <silent> <C-p> "py :Cprint <C-R>p<CR>
endif

" #####YouCompleteMe#####
" Do not open preview window when completing
set completeopt=menuone
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
let g:ycm_use_ultisnips_completer = 1
let g:ycm_filetype_blacklist = {
            \ 'tagbar' : 1,
            \ 'nerdtree': 1,
            \ 'qf' : 1,
            \ 'notes' : 1,
            \ 'markdown' : 1,
            \ 'unite' : 1,
            \ 'vimwiki' : 1,
            \ 'pandoc' : 1,
            \ 'infolog' : 1,
            \ 'mail' : 1
            \}

nnoremap <leader>] :YcmCompleter GoTo<CR>
nnoremap <F1> :YcmDiags<CR>
nnoremap <leader><F1> :YcmForceCompileAndDiagnostics<CR>


" #####Multiple Cursors#####
let g:multi_cursor_exit_from_insert_mode = 0


" #####Unite#####
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <leader>t :<C-u>Unite  -buffer-name=files   -start-insert file_rec/async:!<CR>
nnoremap <leader>e :<C-u>Unite -buffer-name=files -toggle file<CR>
nnoremap <leader>r :<C-u>Unite  -buffer-name=mru  -start-insert  file_mru<CR>
nnoremap <leader>y :<C-u>Unite -buffer-name=yank    history/yank<CR>
nnoremap <leader>j :<C-u>Unite  -buffer-name=jump    jump<CR>
nnoremap <leader>be :<C-u>Unite -buffer-name=buffer buffer<CR>
nnoremap <leader>/ :<C-u>Unite -keep-focus -no-quit -buffer-name=search vimgrep:%<CR>
"
"Doesn't work.  Can't get plugins to play nice
"nnoremap <leader>t :<C-u>Unite -buffer-name=outline -start-insert outline<CR>


" #####JSON.vim#####
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END


" #####DirDiff#####
let g:DirDiffExcludes = ".*.*.swp,*.d"


" ##### Gundo #####
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_playback_delay = 300
let g:gundo_preview_bottom = 1


" ##### EasyAlign #####
vmap <Enter> <Plug>(LiveEasyAlign)

" }}}

"{{{ ***** VIM FEATURES ***** "
" allow project-specific .vimrc files
"set exrc
set secure
" allow the use of a modeline
set modeline
" automatically read a file if it changes outside of vim
set autoread
" hide buffers by default instead of unloading them
set hidden
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
set diffopt+=vertical,iwhite

"turn omnicomplete on
set omnifunc=syntaxcomplete#Complete

" enable persistant undo history
set undofile
set undodir=~/.vim/undodir

" }}}

"{{{ ***** VISUALS ***** "
set number
set norelativenumber

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set nosmartindent

" Solarized settings
"let g:solarized_termcolors=256
"set background=light
"set background=dark
"colorscheme solarized

" seoul256 settings
"let g:seoul256_background = 236
"colorscheme seoul256
"let g:airline_theme="tomorrow"

" Gruvbox settings
let g:gruvbox_italic=0
set background=dark
" set background=light
colorscheme gruvbox

"colorscheme bubblegum
"set background=dark

"colorscheme wombat256 
"colorscheme zenburn 
"colorscheme kolor 
"colorscheme jellybeans 
"colorscheme hybrid
"colorscheme devbox-dark-256
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night

"colorscheme carvedwoodcool

syntax on

set showcmd
"}}}

"{{{ ***** KEY MAPPINGS ***** "
" make <C-A> work the same in tmux and not
nnoremap <C-C> <C-A>

" easier buffer navigation
" nnoremap bn :bn<CR>
" nnoremap bp :bp<CR>

" make backspace work
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set whichwrap+=<,>,h,l

nnoremap <silent> <F5> :so ~/.vim/vimrc<CR>:LvimrcReload<CR>
nnoremap <silent> <F6> :redraw!<CR>
set pastetoggle=<F7>
nmap <F8> :mks!<CR>

" treat wrapped lines as multiple lines when navigating
map j gj
map k gk

" Scroll the window up and down more intuitively
nnoremap <M-j> <C-e>
nnoremap <M-k> <C-y>
nnoremap j <C-e>
nnoremap k <C-y>

" Open a new line and exit insert mode, staying on the same line
nnoremap <leader>o o<ESC>k
nnoremap <leader>O O<ESC>j

" Clean a line and exit insert mode
nnoremap <leader>c cc<ESC>

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

" close annoying windows easily
nnoremap cq :cclose<CR>
nnoremap cl :lclose<CR>
nnoremap cp :pclose<CR>

" }}}

"{{{ ***** COMMANDS ***** " 
" make todo list
command! -nargs=* -complete=file Todos Unite -keep-focus -auto-resize -no-quit -buffer-name=Todos vimgrep:*:TODO(wreed)

"Wrapper for make sequence
"replaced by vim-dispatch plugin
command! -nargs=* MyMake execute '!clear' | make! <args> | cw

" Edit ~/.vim/vimrc in a new tab
command! -nargs=0 EditVimrc tabedit ~/.vim/vimrc

" }}}


