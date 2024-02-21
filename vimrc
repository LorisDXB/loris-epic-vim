set number
set wrap

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-smooth-scroll'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'garbas/vim-snipmate'
Plug 'voldikss/vim-floaterm'
Plug 'Heliferepo/VimTek'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'voldikss/vim-floaterm'
call plug#end()

let g:airline_theme='minimalist'

" binds
let mapleader = " "
nnoremap <Leader>. :Files<CR>
nnoremap <Leader>T :NERDTreeToggle<CR>
nnoremap <Leader>F :FloatermToggle<CR>
nnoremap <C-W><Right> <C-W>l
nnoremap <C-W><Left> <C-W>h
set tabstop=4       " Number of visual spaces per TAB
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent
colorscheme retrobox

" time script
if strftime("%H") < 12
  set background=light
else
  set background=dark
endif

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

