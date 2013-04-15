" Only do this when not done yet for this buffer
" We don't need to do this for the after ftplugin
"if exists("b:did_ftplugin") | finish | endif
"let b:did_ftplugin = 1


"Settings
"--------
"Turn on folding by default
setlocal foldmethod=syntax


"Cleanup
"-------
"Allow vim to undo our settings
let b:undo_ftplugin = "setlocal foldmethod<"
