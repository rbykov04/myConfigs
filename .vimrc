set nu rnu 

syntax on
filetype plugin indent on

set autoindent
set tabstop=4
set shiftwidth=4

set backspace=2

colorscheme murphy
let mapleader = ","
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
noremap <C-e> :noh<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gi :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <Leader>ss :SideSearch <C-r><C-w>
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:.
noremap <F6> :set list!<CR>
inoremap <F6> <C-o>:set list!<CR>
cnoremap <F6> <C-p>:set list!<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>

"let g:move_key_modifier = '<ALT>'
"


" Default mapping
let g:multi_cursor_start_word_key      = '<C-d>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
"let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-d>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'
" set foldmethod=indent           " Indentation-based folding.

set wildmenu                    " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string, then open menu.

" set number                      " Display column numbers.
" set relativenumber              " Display relative column numbers.

set hlsearch                    " Highlight search results.
set incsearch                   " Search as you type.

set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.
autocmd BufNewFile,BufRead *.vd set syntax=html
autocmd BufNewFile,BufRead *.py set syntax=python


function! StartUp()
    if 0 == argc()
        NERDTree
    endif
endfunction

autocmd VimEnter * call StartUp()

call plug#begin()  " Manage plugins with vim-plug.

Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'matze/vim-move'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-utils/vim-man'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
Plug 'zxqfl/tabnine-vim'
Plug 'ddrscott/vim-side-search'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

call plug#end()
