map <S-Right> :bnext<CR>
map <S-Left> :bprev<CR>

map <Space> za<CR>
" don't fold
set foldlevel=99

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
Plug 'tmhedberg/SimpylFold'

call plug#end()

colorscheme badwolf

set hlsearch
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
:match ExtraWhitespace /\s\+$/

au QuickFixCmdPost [^l]* nested cwindow
au QuickFixCmdPost    l* nested lwindow
