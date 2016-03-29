let mapleader=";"
set nocompatible
set t_Co=256
filetype off
call plug#begin()
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'tomasr/molokai'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tmhedberg/matchit'
Plug 'scrooloose/nerdtree'
Plug 'exvim/ex-matchit'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/DrawIt'
Plug 'tacahiroy/ctrlp-funky'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'raimondi/delimitmate'
Plug 'sjl/gundo.vim'
Plug 'rking/ag.vim'
Plug 'klen/python-mode'
Plug 'chriskempson/base16-vim'
call plug#end()
filetype plugin indent on
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
let base16colorspace=256
set shellpipe=2>/dev/null>
set re=1
set scrolljump=5
set scrolloff=3
set showmatch
set incsearch
set ignorecase
set wildmenu
set noexpandtab
set ttyfast
set mouse=a
"be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
set tabstop=8
set shiftwidth=8
set softtabstop=8
"set foldmethod=indent
set foldmethod=syntax
set nofoldenable
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set linespace=0
set nowritebackup
set noswapfile
set nobackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set cindent
set cinoptions=:0
set background=dark
colorscheme molokai
set laststatus=2
set ruler
set number
"set cursorline
"set cursorcolumn
set hlsearch
set nowrap
set encoding=utf-8
syntax enable
syntax on
set completeopt=longest,menuone
set fileencodings=utf-8,gb2312,gbk,gb18030
set fileformat=unix
set helpheight=10
set helplang=en
set hidden
set history=100
set pumheight=10
set scrolloff=5
set showcmd
set smartindent
set smartcase
set termencoding=utf-8
set textwidth=80
set whichwrap=b,s,h,l,<,>,[,]
set wildignore=*.bak,*.o,*.e,*~
set wildmode=list:longest,full
set shortmess=at
set timeout timeoutlen=1000 ttimeoutlen=50
set completeopt=longest,menuone
set cot=menu
set wildignore+=*.o,*.log,*.obj,.git,*.jpg,*.png,*.gif
cmap w!! w !sudo tee % > /dev/null
set title
set t_ts=k
set t_fs=\
set titlestring=vim-%{split(getcwd(),'\/')[-1]}
set tags+=/usr/include/tags
set tags+=./tags
map ta :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap <Leader>; :
"Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-K> <C-W>k<C-W>_
"Copy Paste improvements
"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
"Syntastic Options
let g:syntastic_check_on_open = 1
map <Leader>e :Errors<cr>
let g:syntastic_error_symbol = "x"
let g:syntastic_warning_symbol = "!"
let g:syntastic_javascript_checkers = ["eslint"]
"
" matchit
"
"let b:match_words='\<if\>:\<elif\>:\<else\>:\<endif\>','\<if\>:\<else\>:\<elif\>:\<fi\>'
"
" show tab and spaces
set listchars=tab:>.,trail:.,extends:\#,nbsp:.
"
"
" NERD Tree
nmap <silent> <leader>ne :NERDTree<CR>
nmap <silent> <leader>nc :NERDTreeClose<CR>
map <silent> <F1> :NERDTreeToggle<CR>
let NERDTreeWinPos="right"

"
" ctrlp settings
"
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"
" funky settings
"
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
"
" tag search
"
if executable("ack")
	nnoremap <leader>a :Ack 
	let g:ackprg="ack -H --smart-case --nocolor --nogroup --column
		\ --nocss --ignore-dir=vendor --ignore-dir=log --ignore-dir=tmp
		\ --ignore-file=is:Session.vim --ignore-file=is:tags"
	let g:ackhighlight=1
endif
" airline config
"
let g:bufferline_echo = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.space = ' '
let g:airline_symbols.branch = ''
set laststatus=2
set ambiwidth=double
set noshowmode
set fillchars+=stl:\ ,stlnc:\
"let g:airline_theme='molokai'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb
endif
map <Leader>s :cs find s <C-R>=expand("<cword>")<cr><cr>
map <Leader>g :cs find g <C-R>=expand("<cword>")<cr><cr>
map <Leader>c :cs find c <C-R>=expand("<cword>")<cr><cr>
map <Leader>t :cs find t <C-R>=expand("<cword>")<cr><cr>
map <Leader>e :cs find e <C-R>=expand("<cword>")<cr><cr>
map <Leader>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
map <Leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
map <Leader>d :cs find d <C-R>=expand("<cword>")<cr><cr>

"
" tagbar settings
"
nmap <F2> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
let tagbar_left=1 
let g:tagbar_compact=1
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
     \ }

nnoremap <Leader>sp :CtrlSF<CR>
nmap <Leader>tn :tnext<CR>
nmap <Leader>tp :tprevious<CR>

"
" String replace
"
function! Replace(confirm, wholeword, replace)
	wa
	let flag = ''
	if a:confirm
		let flag .= 'gec'
	else
		let flag .= 'ge'
	endif
	let search = ''
	if a:wholeword
		let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
	else
		let search .= expand('<cword>')
	endif
	let replace = escape(a:replace, '/\&~')
	execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
" nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
" nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
"
" auto complete c shell and so on template
"
"let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
