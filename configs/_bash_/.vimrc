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

" ------------------AUTO COMPLETE BRACKETS & QUOTES------------------
" Specify the directory for plugins (optional but recommended)
call plug#begin('~/.vim/plugged')

" Auto Pairs plugin
Plug 'jiangmiao/auto-pairs'

" List other plugins here (if any)

" End of plugins
call plug#end()

" Enable Auto Pairs
let g:AutoPairsShortcutBackInsert = '<C-g>'
let g:AutoPairsFlyMode = 1
" au FileType * let b:AutoPairs = AutoPairsLoad('.')  " Enable Auto Pairs for all filetypes

" ------------------------------END--------------------------------------

" ---------------------SIDE BAR TREE--------------------------------------
" Specify the directory for plugins (optional but recommended)
call plug#begin('~/.vim/plugged')

" NERDTree plugin
Plug 'preservim/nerdtree'

" List other plugins here (if any)

" End of plugins
call plug#end()

" NERDTree settings
nnoremap <C-b> :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2

"-------------------------------END---------------------------------------

" -------------------MOUSE EDITING SUPPORT-------------------------------

" Enable mouse support in Vim
set mouse=a

" Change mouse pointer to a text cursor in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ----------------------------END----------------------------------------