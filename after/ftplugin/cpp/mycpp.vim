" Only do this when not done yet for this buffer
" We don't need to do this for the after ftplugin
"if exists("b:did_ftplugin") | finish | endif
"let b:did_ftplugin = 1

"Alternate File Settings
"-----------------------
map <Leader>a :A<CR>

"OmniCppComplete Settings
"------------------------
"set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
