" Only do this when not done yet for this buffer
" We don't need to do this for the after ftplugin
"if exists("b:did_ftplugin") | finish | endif
"let b:did_ftplugin = 1

"My C++ Settings
set path+=$PROJ_SRC_DIR
set foldmethod=manual

map <Leader>a :A<CR>

"Insert perforce header
"-----------------------
function! <SID>InsertRCSKeywordsFunction()
   let failure = append(0,[ "\// $Id$" , "\// $Author$" , "\// $Date$" , "\// $Change$" ])
endfunction
command! -nargs=0 InsertRCSKeywords :call <SID>InsertRCSKeywordsFunction()
map <Leader>h :InsertRCSKeywords<CR>
