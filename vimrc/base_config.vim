filetype plugin indent on
set autoread
set t_Co=256
syntax on
set number
set nowrap
set nocompatible
set noshowmode
set wildmenu
set hlsearch
set incsearch
set nobackup
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set ambiwidth=double
"language messages zh_CN.utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set ffs=unix,dos,mac
set fileformat=unix
set textwidth=80
"set timeout timeoutlen=500 ttimeoutlen=50
"set cursorline
set hidden
set showcmd
set showmatch
set ignorecase
set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set noeb vb t_vb=
set laststatus=2
set confirm
let mapleader=";"
set mouse=a
set formatoptions=tcrqn
set autoindent
set smartindent
set cindent
set smarttab
set clipboard=unnamed
set tags=./.tags;,.tags
syntax enable
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
noremap Y y$
autocmd! bufwritepost .vimrc source %
nnoremap <Leader>u :set nu!<CR>
nnoremap U <C-r>
nnoremap <Leader><Space> :set list!<CR>
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
set pastetoggle=<F12>
"set list
set listchars=tab:>-,trail:.,precedes:<,extends:>,eol:$
set shortmess=atI
