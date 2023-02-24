" wreed vimrc
" vim:foldmethod=marker:foldlevel=0:

" let g:python_host_prog= expand('$HOME') . '/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog= expand('$HOME') . '/.pyenv/versions/neovim3/bin/python'

"{{{ ***** PLUGINS INSTALLATION ***** "

" ##### vim-plug #####
set nocompatible
call plug#begin('~/.vim/bundle')

" ***** plugins we only want in true vim.
if !exists("g:gui_oni")
  " As-you-type semantic completion.
  " Plug 'Valloric/YouCompleteMe', { 'on': ['YcmCompleter', 'YcmDiags', 'YcmForceCompileAndDiagnostics'], 'do': './install.py'}
  " Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py'}
  " autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif

  " Deoplete
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " let g:deoplete#enable_at_startup = 1
  " Plug 'davidhalter/jedi-vim'
  " Plug 'zchee/deoplete-jedi'
  " Plug 'zchee/deoplete-go', { 'do': 'make'}
  " let g:deoplete#sources#go#gocode_binary = '/home/william/go/bin/gocode'
  " Plug 'Shougo/neco-vim'

  " coc.nvim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Matching things in insert mode
  Plug 'Raimondi/delimitMate'
  " Make vim priiiiity
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
else
  Plug 'BurningEther/nvimux'
endif
" Linting.. may conflict with YCM
" Plug 'w0rp/ale'

" ***** simple plugins
" can launch an interactive program within an Vim buffer (like bash or other shells)
" Plug 'oplatek/Conque-Shell', { 'on': ['ConqueTerm', 'ConqueTermSplit', 'ConqueTermVSplit']}
" easy buffer management. Replaced by Unite
"Plugin 'jlanzarotta/bufexplorer'
" supposedly make '%' more powerful
Plug 'tmhedberg/matchit'

" Comments
" Way more lightweight comment plugin
Plug 'tpope/vim-commentary'
" Comment text objects (depends on the following
Plug 'glts/vim-textobj-comment'
" define you're own text objects!!
Plug 'kana/vim-textobj-user'

" Shows file browser. (replaces netrw and :Explore)
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
" show tabs up on top prettily
Plug 'mkitt/tabline.vim'
" shows an outline of all Tags in a file
Plug 'majutsushi/tagbar'
" Snippet completion
Plug 'SirVer/ultisnips' ", { 'on': []}
" Asynchonous building and launching of programs
Plug 'tpope/vim-dispatch'
Plug '5long/pytest-vim-compiler'
" Makes motions way better.  lets you jump anywhere on the screen
" Run tests
Plug 'janko-m/vim-test'
" Plug 'Lokaltog/vim-easymotion'
Plug 'justinmk/vim-sneak'
" Allows multiple cursors at once.  very useful
" Plug 'wreed4/vim-multiple-cursors'
" Dependency for vim-snippets
Plug 'tomtom/tlib_vim'
" A library of snippets that work with Utilsnip
Plug 'honza/vim-snippets'
" ability to surround text objects with things like quotes or parens
Plug 'tpope/vim-surround'
" Amazing plugin that makes a lot of things obsolete...
Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
" Plug 'Shougo/unite-outline'
" Make Tmux pretty
Plug 'edkolev/tmuxline.vim'
" switch between header files easily
Plug 'vim-scripts/a.vim'
" pretty JSON stuff
Plug 'elzr/vim-json'
" Diff directories quickly and powerfully
Plug 'will133/vim-dirdiff'
" Enable nested vimrc files
" Plug 'wreed4/vim-lvimrc'
" Gives a graphical view of vim's undo tree (replaced by neovim-compatible
" fork)
"Plugin 'sjl/gundo.vim'
Plug 'simnalamburt/vim-mundo'
" Plug 'mbbill/undotree'
" Git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" Easy alignment
Plug 'junegunn/vim-easy-align'
" Semantic highlighting
" Plug 'jaxbot/semantic-highlight.vim'
" Additional highlighting for cpp
Plug 'octol/vim-cpp-enhanced-highlight'
" Fancy start screen
Plug 'mhinz/vim-startify'
" Better text objects
Plug 'wellle/targets.vim'
" Diff individual sections of code
Plug 'AndrewRadev/linediff.vim'
" Pull in code from the internet
" Plug 'kasandell/Code-Pull'
" Heuristically set indent settings
Plug 'tpope/vim-sleuth'
" Show differences with style
Plug 'mhinz/vim-signify'
" Write outlines in vim
Plug 'vimoutliner/vimoutliner'
" Better diffs (optionaly)
Plug 'chrisbra/vim-diff-enhanced'
" command line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Startup time analyzer
Plug 'tweekmonster/startuptime.vim'
" Automatically change numbering modes (very small, could be a code snippet in vimrc
" Plug 'jeffkreeftmeijer/vim-numbertoggle'
" coding in GO
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" Better ways to deal with extra whitespace
Plug 'ntpeters/vim-better-whitespace'
"Interactive Code Scratchpad
Plug 'metakirby5/codi.vim'
" Code refactoring
Plug 'apalmer1377/factorus'
" Markdown viewing
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" Behave integration
Plug 'avanzzzi/behave.vim', {'for': 'cucumber'}


"SYNTAX Files
" Plug 'linkinpark342/xonsh-vim'
Plug 'stephpy/vim-yaml'
Plug 'solarnz/thrift.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'mustache/vim-mustache-handlebars'

"COLORSCHEMES
" about 3 billion colorschemes
" Plug 'flazz/vim-colorschemes'
" Plug 'altercation/vim-colors-solarized'
" Plug 'morhetz/gruvbox'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'freeo/vim-kalisi'
" Plug 'sickill/vim-monokai'
Plug 'chriskempson/base16-vim'
" Plug 'chriskempson/vim-tomorrow-theme'
Plug 'nightsense/vim-crunchbang'
Plug 'gkjgh/cobalt'
Plug 'exitface/synthwave.vim'
" Plug 'jnurmine/Zenburn'
"
" Plugin to quickly switch color schemes
Plug 'xolox/vim-misc', { 'on': [ 'NextColorScheme', 'PrevColorScheme', 'RandomColorScheme' ] }
Plug 'xolox/vim-colorscheme-switcher', { 'on': [ 'NextColorScheme', 'PrevColorScheme', 'RandomColorScheme' ] }


"Machine-specific plugins
Plug 'gisraptor/vim-lilypond-integrator', {'frozen': 1, 'for': ['lilypond']}
Plug 'hashivim/vim-terraform'
Plug 'andrewstuart/vim-kubernetes'


" end installed plugins
call plug#end()

" augroup load_us_ycm
    " autocmd!
    " autocmd! InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
                        " \| call youcompleteme#Enable() | autocmd! load_us_ycm
" augroup END





" #####Pathogen#####
" call pathogen#infect()
" call pathogen#helptags()

" }}}

"{{{ ***** PLUGIN SETTINGS ***** "

" {{{##### PyMode #####
"let pymode_lint_ignore="E501,E401,E225,W191,W391,W404"
" use rope code assist instead of a complete function
" au FileType python inoremap <expr> <S-Space> '<C-r>=RopeCodeAssistInsertMode()<CR><C-r>=pumvisible() ? "\<lt>C-p>\<lt>Down>" : ""<CR>'
" }}}
" {{{##### Tlist #####
" Toggle tag list
"nnoremap <C-T> :TlistToggle<CR>
"}}}
" {{{##### EasyMotion #####
" nmap <Leader><Leader>s <Plug>(easymotion-sn)
" }}}
" {{{##### Vim-Sneak #####
let g:sneak#label = 1

nmap s <Plug>Sneak_s
xmap s <Plug>Sneak_s
omap s <Plug>Sneak_s

nmap S <Plug>Sneak_S
xmap S <Plug>Sneak_S
omap S <Plug>Sneak_S

" 1-character enhanced 'f'
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

" 1-character enhanced 't'
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

" this seems weird, but it's to maintain motor memory with EasyMotion
nmap <Leader>w <Plug>(SneakStreak)
nmap <Leader>W <Plug>(SneakStreakBackward)
"}}}
" {{{##### Tagbar #####
let g:tagbar_autofocus = 1
let g:tagbar_left = 1
let g:tagbar_zoomwidth = 0
let g:tagbar_show_linenumbers = -1
let g:tagbar_foldlevel = 0
let g:tagbar_autoshowtag = 1
let g:tagbar_sort = 0

" open Tagbar automatically when viewing a supported file/files
"autocmd VimEnter * nested :call tagbar#autoopen(1)
" open Tagbar automatically when entering a buffer of supported file/files
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" Toggle Tagbar
nnoremap <leader>tt :TagbarToggle<CR>
"}}}
" {{{##### Airline #####
let g:airline_powerline_fonts=1

" only if YCM is enabled
" autocmd User YouCompleteMe let g:airline#extensions#ycm#enabled = 1 | AirlineRefresh

let g:airline#extensions#tabline#enabled = 1
let g:airline#extentions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#show_close_button =1
let g:airline#extensions#ycm#enabled = 1

let g:airline#extensions#tagbar#flags = 'f'
let g:airline#extensions#tagbar#enabled = 1

let g:airline#extensions#whitespace#enabled = 1

let g:airline#extensions#tmuxline#enabled = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <silent> <leader>1 <Plug>AirlineSelectTab1
nmap <silent> <leader>2 <Plug>AirlineSelectTab2
nmap <silent> <leader>3 <Plug>AirlineSelectTab3
nmap <silent> <leader>4 <Plug>AirlineSelectTab4
nmap <silent> <leader>5 <Plug>AirlineSelectTab5
nmap <silent> <leader>6 <Plug>AirlineSelectTab6
nmap <silent> <leader>7 <Plug>AirlineSelectTab7
nmap <silent> <leader>8 <Plug>AirlineSelectTab8
nmap <silent> <leader>9 <Plug>AirlineSelectTab9


" }}}
" {{{##### NERDTree #####
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeMouseMode = 2
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeIgnore=['\~$', '\.vim$', '\.d$', '\.sw.$']
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>


" }}}
" {{{##### UltiSnips #####
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

" }}}
" {{{##### YouCompleteMe #####
"" Do not open preview window when completing
"" set completeopt=menuone
"" let g:ycm_add_preview_to_completeopt = 0
"" Auto Close preview window
"let g:ycm_autoclose_preview_window_after_insertion = 1
"" Disable Tab for cycling through commands so that UtilSnips will still work
"let g:ycm_key_list_select_completion=['<Down>']
"let g:ycm_key_list_previous_completion=['<Up>']
"let g:ycm_collect_identifiers_from_tags_files=0
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:ycm_complete_in_comments = 1
"let g:ycm_key_invoke_completion = '<C-N>'
""let g:ycm_extra_conf_globlist = ['~/.ycm_extra_conf.py']
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_filetype_blacklist = {
"            \ 'tagbar' : 1,
"            \ 'nerdtree': 1,
"            \ 'qf' : 1,
"            \ 'notes' : 1,
"            \ 'unite' : 1,
"            \ 'vimwiki' : 1,
"            \ 'pandoc' : 1,
"            \ 'infolog' : 1,
"            \ 'mail' : 1
"            \}

"" Python3 completion by default
"" let g:ycm_python_binary_path = system('readlink -f ' . system('which python3'))
"let g:ycm_python_binary_path = 'python3'
"let g:ycm_server_keep_logfile=1

"" Mappings
"nnoremap <leader>] :YcmCompleter GoTo<CR>
"nnoremap <leader>[ :YcmCompleter GoToReferences<CR>
"nnoremap <leader>gt :YcmCompleter GetType<CR>
"nnoremap <leader>gp :YcmCompleter GetParent<CR>
"nnoremap <leader>gd :YcmCompleter GetDoc<CR>
"nnoremap <leader>= :YcmCompleter FixIt<CR>

"nnoremap <silent> <F1> :YcmDiags<CR>
"nnoremap <silent> <leader><F1> :YcmForceCompileAndDiagnostics<CR>


" }}}
" {{{##### Deoplete #####
" }}}
" {{{##### Multiple Cursors #####
let g:multi_cursor_exit_from_insert_mode = 0

" }}}
" {{{##### Unite #####
"let g:unite_source_history_yank_enable = 1
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
""nnoremap <leader>t :<C-u>Unite  -buffer-name=files   -start-insert file_rec/async:!<CR>
"nnoremap <leader>e :<C-u>Unite -buffer-name=files -toggle file<CR>
"nnoremap <leader>r :<C-u>Unite  -buffer-name=mru  -start-insert  file_mru<CR>
"nnoremap <leader>y :<C-u>Unite -buffer-name=yank    history/yank<CR>
"nnoremap <leader>j :<C-u>Unite  -buffer-name=jump    jump<CR>
" nnoremap <leader>be :<C-u>Unite -buffer-name=buffer buffer<CR>
"nnoremap <leader>/ :<C-u>Unite -keep-focus -no-quit -buffer-name=search -start-insert line:all<CR>
"nnoremap <leader>vg :<C-u>Unite -buffer-name=vimgrep vimgrep<CR>
""
"nnoremap <leader>t :<C-u>Unite -buffer-name=outline -no-split -start-insert outline<CR>

" }}}
" {{{##### Denite #####
" nnoremap <leader>e :Denite file<CR>
" nnoremap <leader>r :Denite file_rec<CR>
" nnoremap <leader>be :Denite -buffer-name=buffer buffer<CR>
" nnoremap <leader>/ :Denite -no-quit -buffer-name=search line:all<CR>
nnoremap <leader>t :Denite outline<CR>
" nnoremap <leader>vg :Denite grep<CR>
" nnoremap <leader>j :Denite jump<CR>
" }}}
" {{{ ##### FZF #####
command! -nargs=* -complete=dir Cd call fzf#run(fzf#wrap(
  \ {'source': 'find '.(empty([<f-args>]) ? '.' : expand(<f-args>)).' -type d',
  \  'sink': 'cd'}))

function! Bufs()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

command! BufferDelete call fzf#run(fzf#wrap({
  \ 'source': Bufs(),
  \ 'sink*': { lines -> execute('bwipeout '.join(map(lines, {_, line -> split(line)[0]}))) },
  \ 'options': '--multi --bind ctrl-a:select-all+accept --prompt BufDelete'
\ }))

  " \ 'options': '+m -x --tiebreak=index --header-lines=1 --ansi -d \t -n "2,1..2" --prompt BufDelete>'

nnoremap <leader>cd :Cd ~<CR>
nnoremap <leader><leader>cd :Cd
nnoremap <leader>e :Files<CR>
nnoremap <leader><leader>e :Files ~<CR>
nnoremap <leader>be :Buffers<CR>
nnoremap <leader>bd :BufferDelete<CR>
nnoremap <leader>/ :BLines<CR>
nnoremap <leader>gst :GFiles!?<CR>
" }}}
" {{{##### JSON.vim #####
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  " autocmd FileType json set textwidth=78 shiftwidth=2
  " autocmd FileType json set softtabstop=2 tabstop=8
  " autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=indent
augroup END


" }}}
" {{{##### DirDiff #####
let g:DirDiffExcludes = ".*.*.swp,*.d"

" }}}
" {{{##### Mundo #####
nnoremap <leader>u :MundoToggle<CR>
let g:mundo_playback_delay = 300
let g:mundo_preview_bottom = 1

" }}}
" {{{##### UndoTree #####
" nnoremap <leader>u :UndotreeToggle<CR>
" let g:undotree_WindowLayout = 2
" let g:undotree_SetFocusWhenToggle = 1


" }}}
" {{{##### EasyAlign #####
vmap <Enter> <Plug>(LiveEasyAlign)

" }}}
" {{{##### DelimitMate #####
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
imap <c-l> <Plug>delimitMateS-Tab

" }}}
" {{{##### Semantic-Highlight.vim #####
let g:semanticBlacklistOverride = {
    \'cpp': [
    \   'auto', 'const', 'double', 'float', 'int', 'short',
    \   'struct', 'unsigned', 'break', 'continue', 'else', 'for',
    \   'long', 'signed', 'switch', 'void', 'case', 'default',
    \    'enum', 'goto', 'register', 'sizeof', 'typedef', 'volatile',
    \   'char', 'do', 'extern', 'if', 'return', 'static',
    \   'union', 'while', 'asm', 'dynamic_cast', 'namespace', 'reinterpret_cast',
    \   'try', 'bool', 'explicit', 'new', 'static_cast', 'typeid',
    \    'catch', 'false', 'operator', 'template', 'typename', 'class',
    \   'friend', 'private', 'this', 'using', 'const_cast', 'inline',
    \   'public', 'throw', 'virtual', 'delete', 'mutable', 'protected',
    \   'true', 'wchar_t', 'assert'
    \ ]
\ }

" }}}
" {{{##### vim-cpp-enhanced-highlight #####
let g:cpp_class_scope_highlight=0
let g:cpp_experimental_template_highlight = 0

" }}}
" {{{##### Startify #####
let g:startify_lists = [
          \ { 'type': 'dir',       'header': [   'MRU '. getcwd()] },
          \ { 'type': 'files',     'header': [   'MRU']            },
          \ { 'type': 'sessions',  'header': [   'Sessions']       },
          \ { 'type': 'bookmarks', 'header': [   'Bookmarks']      },
          \ { 'type': 'commands',  'header': [   'Commands']       },
          \ ]

" let g:startify_bookmarks = [ {'v': '~/.vim/vimrc'} ]
let g:startify_commands = [
    \ {'rc': 'EditVimrc'},
    \ {'crc': 'EditCustomVimrc'},
    \ {'p': 'PlugUpdate'}]
let g:startify_session_delete_buffers = 1
if has('nvim')
  let g:startify_custom_header =
        \ map(split(system('toilet Nvim -t -W -F border'), '\n'), '"   ". v:val') + ['','']
        " \ map(split(system('cowsay -f dragon Welcome to VIM | sed "s/ *$//"'), '\n'), '"   ". v:val') + ['','']
        " \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']
else
  let g:startify_custom_header =
        \ map(split(system('toilet Vim -t -W -F border'), '\n'), '"   ". v:val') + ['','']
endif


" }}}
" {{{##### Signify #####
let g:signify_vcs_list = ['git']

omap ih <plug>(signify-motion-inner-pending)
xmap ih <plug>(signify-motion-inner-visual)
omap ah <plug>(signify-motion-outer-pending)
xmap ah <plug>(signify-motion-outer-visual)
" }}}
" {{{ ##### vim-colorscheme switcher #####
let g:colorscheme_switcher_define_mappings = 0
let g:colorscheme_switcher_exclude = []

nnoremap <silent> <F9> :NextColorScheme<CR>
nnoremap <silent> <S-F9> :PrevColorScheme<CR>
nnoremap <silent> <leader><F9> :RandomColorScheme<CR>
" }}}
" {{{  ##### vim-codi #####
let g:codi#interpreters = {
  \ 'python': {
  \   'prompt': '^(ins)\(>>>\|\.\.\.\) '
  \ },
  \}
" let codi#log='/home/william/log/codi.log'
" let codi#autocmd = 'None'

" }}}
" {{{ ##### nvimux #####
if exists("g:gui_oni")
lua << EOF
local nvimux = require('nvimux')

-- Nvimux configuration
nvimux.config.set_all{
  prefix = '<C-a>',
  new_window = 'term', -- Use 'term' if you want to open a new term for every new window
  new_tab = nil, -- Defaults to new_window. Set to 'term' if you want a new term for every new tab
  new_window_buffer = 'single',
  quickterm_direction = 'botright',
  quickterm_orientation = 'vertical',
  quickterm_scope = 't', -- Use 'g' for global quickterm
  quickterm_size = '80',
}

-- Nvimux custom bindings
nvimux.bindings.bind_all{
  {'-', ':NvimuxHorizontalSplit', {'n', 'v', 'i', 't'}},
  {'\\|', ':NvimuxVerticalSplit', {'n', 'v', 'i', 't'}},
  {'<c-l>', ':tabnext', {'n', 'v', 'i', 't'}},
  {'<c-h>', ':tabprevious', {'n', 'v', 'i', 't'}},
}

-- Required so nvimux sets the mappings correctly
nvimux.bootstrap()
EOF
endif

" }}}
" {{{ ##### vim-fugitive #####
augroup rebase_tools
  autocmd!
  autocmd FileType gitrebase nnoremap <buffer> <leader>] :Gedit <c-r><c-w><CR>
  autocmd FileType gitrebase nnoremap <buffer> <leader>p :Pick <CR>j
  autocmd FileType gitrebase nnoremap <buffer> <leader>r :Reword <CR>j
  autocmd FileType gitrebase nnoremap <buffer> <leader>e :Edit <CR>j
  autocmd FileType gitrebase nnoremap <buffer> <leader>sq :Squash <CR>j
  autocmd FileType gitrebase nnoremap <buffer> <leader>f :Fixup <CR>j
augroup END

command! Jenkins execute 'Gcommit -a --fixup=HEAD' | Gpush
" }}}
" {{{ ##### Jedi #####
let g:jedi#completions_enabled = 0
let g:jedi#goto_command = "<leader>]"
" }}}
" {{{ ##### vim-go #####
let g:go_def_mapping_enabled = 0
let g:go_fmt_experimental = 1  " retains folds on save (For some reason) https://github.com/fatih/vim-go/issues/502

augroup vimgosettings
  " autocmd FileType go nmap <leader>] :GoDef<CR>
  au FileType go nmap <F4> <Plug>(go-test)
  au FileType go nmap <leader><F4> <Plug>(go-lint)
  au FileType go nmap <F3> <Plug>(go-build)
  au FileType go nmap <leader><F3> <Plug>(go-install)
  au FileType go nmap <F2> <Plug>(go-imports)
  au FileType go nmap <leader>ie <Plug>(go-iferr)
augroup END
" }}}
" {{{ ##### coc.nvim #####
nmap <silent> <leader>] <Plug>(coc-definition)
" nmap <silent> gf <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

let g:coc_node_path = '/snap/bin/node'

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>r <Plug>(coc-rename)
" }}}
" {{{ ##### instant-markdown-viewer #####
" let g:instant_markdown_python = 1
let g:instant_markdown_autostart = 0
" }}}

" }}}

"{{{ ***** VIM FEATURES ***** "
" allow project-specific .vimrc files
if has('nvim')
  set shada+=f10
endif
set exrc
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
if has('nvim')
  set inccommand=split
endif
" set status line always on
if exists("g:gui_oni")
  set noshowmode
  set noruler
  set laststatus=0
  set noshowcmd
else
  set laststatus=2
endif

set shortmess+=c

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
if !has('nvim')
    " set encoding=utf-8
endif
" set fileencoding=utf-8

" New Splits default to right, or below
set splitbelow
set splitright
set diffopt+=vertical

"turn omnicomplete on
set omnifunc=syntaxcomplete#Complete

" enable persistant undo history
set undofile
set undodir=~/.vim/undodir

" format options
set expandtab
" set shiftwidth=4
" set softtabstop=4
set tabstop=4
set autoindent
set nosmartindent
set cindent
set cino=l1,t0,(0

set breakindent
set showbreak=↳
set breakindentopt=min:20

" TOhtml settings
let g:html_ignore_conceal=1
let g:html_dynamic_folds=1

" folding options
set foldlevelstart=99
set foldmethod=syntax
augroup folding_settings
  autocmd FileType python,xonsh,yaml,thrift set foldmethod=indent
augroup END

" set filetype options
au BufNewFile,BufRead *.xsh set filetype=python
au BufNewFile,BufRead Dockerfile* set filetype=dockerfile

" md options
augroup md_settings
  autocmd FileType markdown set textwidth=80
  autocmd FileType markdown set nocindent
augroup END

set wildmode=longest:full

" switch ' and `
noremap ' `
noremap ` '

noremap Y y$
noremap <leader>y "*y
noremap <leader>p "*p

" In nvim, open keyword/help in new terminal,
" as nvim doesn't currently allow terminal scrollback.
function! KeywordNvim(searchTerm)
  if &keywordprg == ':Man'
    exe ':Man ' . a:searchTerm
  else
    let l:man = &keywordprg
    vsplit | enew
    exe 'terminal ' . l:man a:searchTerm
    normal i
  endif
endfunction

function! KeywordNvimVisual()
  let l:saved_reg = @"
  execute "normal! vgvy"
  call KeywordNvim(@")
  let @" = l:saved_reg
endfunction

" if has("nvim")
"   nnoremap K :call KeywordNvim(expand("<cword>"))<CR>
"   vnoremap K <Esc>:call KeywordNvimVisual()<CR>
" endif


let g:clipboard = {
      \   'name': 'My xsel',
      \   'copy': {
      \      '+': 'xsel -i',
      \      '*': 'xsel -ib',
      \    },
      \   'paste': {
      \      '+': 'xsel -i',
      \      '*': 'xsel -ib',
      \   },
      \   'cache_enabled': 1,
      \ }

" comment strings
augroup comment_strings
  autocmd FileType python set commentstring=#\ %s
augroup END
" }}}


"{{{ ***** VISUALS ***** "
set number
set relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter,CmdlineLeave * if &nu | set rnu   |  endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave,CmdlineEnter   * if &nu | set nornu | redraw | endif
augroup END

syntax on
autocmd BufWinEnter * if line2byte(line("$") + 1) > 10000000 | syntax clear | endif
if !exists("g:gui_oni")
  if has('nvim')
    set termguicolors
    " colorscheme base16-ocean
    colorscheme base16-eighties
    " colorscheme base16-solarized-dark
  else
    colorscheme cobalt
  endif
endif

" Solarized settings
" let g:solarized_termcolors=256
"set background=light
" set background=dark
" colorscheme solarized

" seoul256 settings
" let g:seoul256_background = 235
" colorscheme seoul256
" let g:airline_theme="tomorrow"

" Gruvbox settings
" let g:gruvbox_italic=0
" set background=dark
" set background=light
" colorscheme gruvbox

" Paper-color settings
" colorscheme PaperColor
" set background=dark

" colorscheme monokai

" colorscheme bubblegum
" set background=dark

" colorscheme kalisi
" set background=dark

" colorscheme wombat256
" colorscheme zenburn
" colorscheme kolor
" colorscheme jellybeans
" colorscheme hybrid
" colorscheme devbox-dark-256
" colorscheme Tomorrow-Night-Eighties
" colorscheme Tomorrow-Night

"colorscheme carvedwoodcool

" if has('nvim')
"   colorscheme crunchbang
"   set termguicolors
" else
"   colorscheme cobalt
" endif
" let g:airline_theme="synthwave"

" colorscheme cobalt

" Synthwave
" set background=dark
" colorscheme synthwave
" if has('termguicolors')
"   set termguicolors " 24-bit terminal
" else
"   let g:synthwave_termcolors=256 " 256 color mode
" endif


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

" nnoremap <silent> <F5> :so ~/.vim/vimrc<CR>:LvimrcReload<CR>
nnoremap <silent> <F5> :so ~/.vim/vimrc<CR>
nnoremap <silent> <F6> :redraw!<CR>
set pastetoggle=<F7>
nmap <F8> :mks!<CR>

" treat wrapped lines as multiple lines when navigating
map j gj
map k gk

" Scroll the window more intuitively
nnoremap <M-j> <C-e>
nnoremap <M-k> <C-y>
nnoremap <M-h> 10zh
nnoremap <M-l> 10zl
nnoremap j <C-e>
nnoremap k <C-y>
nnoremap h 10zh
nnoremap l 10zl

vnoremap <M-j> <C-e>
vnoremap <M-k> <C-y>
vnoremap <M-h> 10zh
vnoremap <M-l> 10zl
vnoremap j <C-e>
vnoremap k <C-y>
vnoremap h 10zh
vnoremap l 10zl

" Open a new line and exit insert mode, staying on the same line
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

" Clean a line and exit insert mode
nnoremap <leader>c cc<ESC>

" Exit insert mode and put ';' at the end of the line
" inoremap ;<Esc> <Esc>A;<Esc>

" Open tag in new tab
nnoremap <M-]> <C-W><C-]><C-W>T

" Toggle TODOs as done or not
nnoremap <silent> <leader>x :s/\[ \]TODO/[X]TODO/<CR>:nohl<CR>
nnoremap <silent> <leader><space> :s/\[X\]TODO/[ ]TODO/<CR>:nohl<CR>

" copy 'filename:linenumber' to @f register.  useful for adding links to
" places in files in comments
nnoremap <silent> <leader>gf :let @f=@% . ':' . line('.')<CR>:echo @f<CR>


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
nnoremap cqq :lclose<CR>
nnoremap cp :pclose<CR>

" Call CopyMode
vnoremap <C-c> :call CopyMode()<CR><CR>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Default building/running options
let g:run_command = 'echo No run command defined'
nnoremap <leader>` :execute "Start " . g:run_command<CR>

nnoremap <F3> :Make %<CR>
autocmd FileType lilypond setlocal makeprg=lilypond
augroup python_build
  autocmd FileType python compiler pylint
  autocmd FileType python nnoremap <F3> :Make %<CR>
  autocmd FileType python nnoremap <S-F3> :Make .<CR>
  autocmd FileType python nnoremap <F4> :Dispatch mypy %<CR>
  autocmd FileType python nnoremap <S-F4> :Dispatch mypy .<CR>
augroup END

" Quickly edit a macro
nnoremap <leader>@  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>
" Quickly edit the Q macro
nnoremap <leader>q :<c-u><c-r><c-r>='let @q = '. string(getreg('q'))<cr><c-f><left>

" go back and delete last buffer (dangerous if the going back doesn't bring
" you to another buffer
nnoremap <M-C-O> <C-^>:bd! #<CR>

" toggle number
nnoremap <silent> -- :set number!<CR>

" toggle cursorcolumn
nnoremap <silent> scc :set cursorcolumn!<CR>

" insert command at line
inoremap <C-r>! <C-\><C-O>:let @r=system("")<left><left>

" terminal escape
" tnoremap <Esc><Esc> <C-\><C-N>

" enter selects menu entry
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" }}}

"{{{ ***** COMMANDS ***** "
" I caved
command! W w

" Terminal commands
command! -nargs=0 VTerm vsplit term://bash
command! -nargs=0 STerm split term://bash
command! -nargs=0 VPyTerm vsplit term://python3
command! -nargs=0 SPyTerm split term://python3

" make todo list
command! -nargs=* -complete=file Todos execute "Unite -keep-focus -auto-resize -no-quit -buffer-name=Todos vimgrep:*:TODO(" . expand("$USER") . ")"

"Wrapper for make sequence
"replaced by vim-dispatch plugin
command! -nargs=* MyMake execute '!clear' | make! <args> | cw

" Edit ~/.vim/vimrc in a new tab
command! -nargs=0 EditVimrc tabedit ~/.vim/vimrc

" Swap two lines
command! -nargs=1 -range Swap call Swap(<f-args>)

function! Swap(s1, s2, d1, d2)
    let cursor = line(".")

    echo "swap <" . a:s1 . "," . a:s2 . "> and <" . a:d1 . "," . a:d2 . ">"
    if a:s1 <= a:d1
        let l:source1 = a:s1
        let l:source2 = a:s2
        let l:dest1   = a:d1
        let l:dest2   = a:d2
    else
        let l:dest1   = a:s1
        let l:dest2   = a:s2
        let l:source1 = a:d1
        let l:source2 = a:d2
    endif

    let l:offset = l:source2 - l:source1

    execute l:source1 .",". lsource2 . "move " . l:dest2
    execute l:dest1 . "," . l:dest2 . "move " . l:source2

    execute l:source1 . ",". l:source2 . "normal =="
    execute l:dest1 . ",". l:dest2 . "normal =="
    execute "normal " . cursor . "G"

endfunction

function! CopyMode() range
    execute a:firstline . "," . a:lastline . "yank c"
    tabnew
    setlocal nonumber
    setlocal norelativenumber
    setlocal showbreak=
    map <buffer> <silent> <C-V> :bd!<CR>
    normal [p
endfunction

" Diff original file (from help)
command! DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
            \ | diffthis | wincmd p | diffthis

" from https://amix.dk/vim/vimrc.html
function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n", "", "")
    let l:pattern = '\<'.l:pattern.'\>'

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    " elseif a:direction == 'gv'
        " call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    " elseif a:direction == 'replace'
        " call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        " execute "normal /" . l:pattern . "^M"
        execute "normal /" . l:pattern
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" }}}


"{{{ ***** MACHINE SPECIFIC CONFIG ***** "
if filereadable($HOME . "/.vimrc_custom")
  source ~/.vimrc_custom
  command! -nargs=0 EditCustomVimrc tabedit ~/.vimrc_custom
endif
"}}}
