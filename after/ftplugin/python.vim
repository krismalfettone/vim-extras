" Only do this when not done yet for this buffer
" Don't need to do this for after ftplugins
"if exists("b:did_ftplugin") | finish | endif
"let b:did_ftplugin = 1

" PEP8 says 4 spaces
setlocal ts=4
setlocal sw=4

"This isn't working for now
"set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,longest,preview

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

let b:pylint_onwrite = 0
let b:pylint_cwindow = 0
compiler pylint
