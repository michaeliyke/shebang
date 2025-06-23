--[[
    HOW TO INSTALL AND SETUP VIM FOR THIS TO WORK

    (0). sudo apt install vim

    (1). sudo apt install xclip

    (2). curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

     (3). GOTO vim and run this below to install auto-pairs and NERDTree:
     :PlugInstall

     (4). Reload Vim or source the config
     :source ~/.vimrc

     NOTE: Toggle NERDTree with Ctrl+b
]]

:imap <C-/> #
set tabstop=8 shiftwidth=8
set autoindent
set smartindent
set cindent
syntax enable
set number
set mouse=a
colorscheme morning

function! PrependComment()
    let current_line = getline('.')
    if current_line =~ '^#'
        return "\<CR>#+ "
    else
        return "\<CR>"
    endif
endfunction

inoremap <expr> <CR> PrependComment()

" ------------------PLUGIN SETUP------------------
call plug#begin('~/.vim/plugged')

" Auto Pairs plugin
Plug 'jiangmiao/auto-pairs'

" NERDTree plugin
Plug 'preservim/nerdtree'

call plug#end()

" ------------------Auto Pairs Settings------------------
let g:AutoPairsShortcutBackInsert = '<C-g>'
let g:AutoPairsFlyMode = 1

" ------------------NERDTree Settings------------------
nnoremap <C-b> :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2

" ------------------Mouse Editing Support------------------
" Enable mouse support in Vim
set mouse=a

" Change mouse pointer to a text cursor in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

-- filetype plugin indent on
filetype plugin indent on
