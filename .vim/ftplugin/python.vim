set colorcolumn=110
highlight ColorColumn ctermbg=0 guibg=lightgrey

autocmd BufWritePost *.py call flake8#Flake8()
