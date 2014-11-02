# python code for cascade.vim. 
# writing a seperate file so I can use YCM :P
import vim, os, os.path

def SourceLocalVimrcFiles():
    currentDirectory = os.getenv('HOME').split('/')
    nextDirs = vim.eval('getcwd()').split('/')

    for direc in currentDirectory:
        nextDirs.pop(0)

    while(True):
        lvimrc = '/'.join(currentDirectory) + '/.lvimrc'
        if os.path.isfile(lvimrc):
            yield lvimrc

        if not nextDirs:
            break
        else:
            currentDirectory.append(nextDirs.pop(0))

    

# [ ]TODO(wreed): try out generate function
# [ ]TODO(wreed): make name of local vimrc file a vim param
# [ ]TODO(wreed): make root dir a vim param, but $HOME by default
