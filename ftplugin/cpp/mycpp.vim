"My C++ Settings
if exists("loaded_mycpp_vim")
   finish
endif
let loaded_mycpp_vim = 1

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

"Test
