" Plugin to enable cascading setting starting with User's $HOME

pyfile ~/.vim/bundle/vimrc_cascade/plugin/cascade.py

function! PrintVimrcs()
python << END
for f in SourceLocalVimrcFiles():
    vim.command("echo " + repr(f))
END
endfunction

command! PrintVimrcs call PrintVimrcs()
