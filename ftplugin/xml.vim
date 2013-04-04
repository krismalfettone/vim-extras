"These should be moved to ~/.vim/after/ftplugin/xml.vim
"However, I can't do that through the web interface at work.
" Only do this when not done yet for this buffer
if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

"Turn on folding by default
setlocal foldmethod=syntax

"Allow vim to undo our settings
let b:undo_ftplugin = "setlocal foldmethod<"

"Remove this when moved to after/ftplugin script
unlet b:did_ftplugin
source $VIMRUNTIME/ftplugin/xml.vim
