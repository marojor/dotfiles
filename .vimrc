map <S-Right> :bnext<CR>
map <S-Left> :bprev<CR>

if has("autocmd")
  filetype plugin indent on
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'
Plug 'flazz/vim-colorschemes'

call plug#end()

colorscheme badwolf
