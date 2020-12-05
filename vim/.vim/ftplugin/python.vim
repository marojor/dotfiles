set colorcolumn=110
highlight ColorColumn ctermbg=0 guibg=lightgrey

autocmd BufWritePost *.py call flake8#Flake8()

let g:syntastic_python_flake8_config_file='.flake8'
