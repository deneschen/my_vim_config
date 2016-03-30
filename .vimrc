filetype off
call plug#begin()
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/taglist.vim'
Plug 'tomasr/molokai'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'vim-scripts/mru.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tmhedberg/matchit'
Plug 'exvim/ex-matchit'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/DrawIt'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'
Plug 'raimondi/delimitmate'
Plug 'sjl/gundo.vim'
Plug 'klen/python-mode'
Plug 'chriskempson/base16-vim'
Plug 'Shougo/unite.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
filetype plugin indent on
syntax on
syntax enable
let mapleader=";"
set nocompatible
set re=1
set t_Co=256
set ruler
set magic
set nowrap
set number
set hidden
set cindent
set showcmd
let base16colorspace=256
set shellpipe=2>/dev/null>
set scrolljump=5
set scrolloff=3
set showmatch
set incsearch
set ignorecase
set wildmenu
set noexpandtab
set shiftround
set ttyfast
set mouse=a
set mousehide
set viminfo^=%
set ttymouse=xterm2
set tabstop=8
set shiftwidth=8
set softtabstop=8
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
set cinoptions=:0
set background=dark
colorscheme molokai
"set cursorline
"set cursorcolumn
set hlsearch
set encoding=utf-8
set completeopt=longest,menuone
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set ffs=unix,dos,mac
set formatoptions+=m
set formatoptions+=B
set fileformat=unix
set helpheight=10
set history=100
set pumheight=10
set scrolloff=5
set smartindent
set smartcase
set termencoding=utf-8
set textwidth=80
set whichwrap=b,s,h,l,<,>,[,]
set wildignore=*.bak,*.o,*.e,*~
set wildmode=list:longest,full
set shortmess=at
set nrformats=
set timeout timeoutlen=500 ttimeoutlen=50
set completeopt=longest,menuone
set cot=menu
set selection=inclusive
set selectmode=mouse,key
set wildignore+=*.o,*.log,*.obj,.git,*.jpg,*.png,*.gif
set listchars=tab:>.,trail:.,extends:\#,nbsp:.
cmap w!! w !sudo tee % > /dev/null
" set t_ti= t_te=
set tags+=/usr/include/tags
set tags+=./tags
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
map ta :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
if &term =~ '256color'
	set t_ut=
endif
noremap <F1> <Esc>"
autocmd! bufwritepost .vimrc source %
" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-K> <C-W>k<C-W>_
" Copy Paste improvements
vnoremap <leader>y "+y"
map <Leader>sa ggVG"
nnoremap <leader>v V`}
nnoremap <Leader>u :set nu!<CR>
noremap <leader><left> :bp<CR>
noremap <leader><right> :bn<CR>
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>
map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
noremap <leader>0 :tablast<cr>
let g:last_active_tab = 1
nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
autocmd TabLeave * let g:last_active_tab = tabpagenr()
nnoremap <leader><C-t>     :tabnew<CR>
inoremap <leader><C-t>     <Esc>:tabnew<CR>
vnoremap < <gv
vnoremap > >gv
map Y y$
nnoremap U <C-r>
"
" rainbow_parentheses
"
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"
" vim-better-whitespace
"
autocmd BufWritePre * StripWhitespace
nnoremap <Leader>sw :StripWhitespace<cr>
" Syntastic Options
let g:syntastic_check_on_open = 1
nmap <Leader>e :Errors<cr>
let g:syntastic_error_symbol = "x"
let g:syntastic_warning_symbol = "!"
let g:syntastic_javascript_checkers = ["eslint"]
"
" MRU settings
"
nnoremap <F5> :MRU<cr>
highlight link MRUFileName LineNr
let MRU_Add_Menu = 0
let MRU_Auto_Close = 0
let MRU_Window_Height = 15
let MRU_Max_Entries = 1000
let MRU_Use_Current_Window = 1
let MRU_Max_Menu_Entries = 20
let MRU_Max_Submenu_Entries = 15
"let MRU_File = '~/.vim_mru_files'
let MRU_Filename_Format={'formatter':'v:val', 'parser':'.*'}
let MRU_Include_Files = '\.c$\|\.h$\|Makefile\|\.mk$'
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix
"
" NERD Tree
"
nmap <silent> <leader>ne :NERDTree<CR>
nmap <silent> <leader>nc :NERDTreeClose<CR>
map <silent> <F1> :NERDTreeToggle<CR>
let NERDTreeWinPos="right"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeDirArrows=0
"let g:NERDTreeDirArrowExpandable = 'O'
"let g:NERDTreeDirArrowCollapsible = 'o'
"
" NERD git plugin
"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "^",
    \ "Renamed"   : ">",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "x",
    \ "Dirty"     : "X",
    \ "Clean"     : "V",
    \ "Unknown"   : "?"
    \ }
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
"
" ag search
"
if executable("ag")
	nnoremap <leader>ag :Ag!
	let g:ag_prg="ag --vimgrep --smart-case"
endif
"
" airline config
"
set laststatus=2
set ambiwidth=double
"set noshowmode
set fillchars+=stl:\ ,stlnc:\
let g:bufferline_echo = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.space = ' '
let g:airline_symbols.branch = ''
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
"
" buffer-line settings
"
"let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_modified = '+'
let g:bufferline_show_bufnr = 1
let g:bufferline_rotate = 1
let g:bufferline_fname_mod = ':t'
let g:bufferline_active_highlight = 'StatusLine'
let g:bufferline_inactive_highlight = 'StatusLineNC'
let g:bufferline_solo_highlight = 0
let g:bufferline_pathshorten = 0
let g:bufferline_echo = 0
autocmd VimEnter * let &statusline='%{bufferline#refresh_status()}'
	\ .bufferline#get_status_string()

if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	if filereadable("cscope.out")
	    cs add cscope.out
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
"
" tag list settings
"
nnoremap <silent> <F3> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Compact_Format = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'


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

if has("gui_running")
	set guifont=Monaco:h14
	if has("gui_gtk2")   "GTK2
		set guifont=Monaco\ 12,Monospace\ 12
	endif
	set guioptions-=T
	set guioptions+=e
	set guioptions-=r
	set guioptions-=L
	set guitablabel=%M\ %t
	set showtabline=1
	set linespace=2
	set noimd
	set t_Co=256
endif

hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
