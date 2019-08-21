set tabstop=4
set shiftwidth=4
set expandtab

set makeprg=shellcheck\ -f\ gcc\ %
au BufWritePost * :silent make | redraw!
