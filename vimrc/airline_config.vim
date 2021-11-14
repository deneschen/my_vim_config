let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1
let g:airline_detect_spelllang=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_inactive_alt_sep=1
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

let g:airline_filetype_overrides = {
    \ 'coc-explorer':  [ 'CoC Explorer', '' ],
    \ 'defx':  ['defx', '%{b:defx.paths[0]}'],
    \ 'fugitive': ['fugitive', '%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'],
    \ 'gundo': [ 'Gundo', '' ],
    \ 'help':  [ 'Help', '%f' ],
    \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
    \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
    \ 'startify': [ 'startify', '' ],
    \ 'vim-plug': [ 'Plugins', '' ],
    \ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],
    \ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
    \ 'vaffle' : [ 'Vaffle', '%{b:vaffle.dir}' ],
    \ }

let g:airline_exclude_preview = 1
let g:airline_skip_empty_sections = 1
let w:airline_skip_empty_sections = 0
let g:airline_highlighting_cache = 0
let g:airline_focuslost_inactive = 0
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.colnr = ' col:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ' row:'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.spell = ''
let g:airline_symbols.whitespace = ''

let g:airline_section_b = '%-0.50{getcwd()}'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
let g:airline#extensions#branch#use_vcscommand = 0
let g:airline#extensions#branch#displayed_head_limit = 20
let g:airline#extensions#branch#format = 0
let g:airline#extensions#branch#sha1_len = 10

let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 79,
    \ 'x': 60,
    \ 'y': 88,
    \ 'z': 45,
    \ 'warning': 80,
    \ 'error': 80,
    \ }

let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ [ 'x', 'y', 'z', 'error', 'warning' ]
  \ ]

let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#keymap#label = 'Layout:'
let g:airline#extensions#keymap#default = ''

let g:airline#extensions#languageclient#enabled = 1
let airline#extensions#languageclient#error_symbol = 'E:'
let airline#extensions#languageclient#warning_symbol = 'W:'
let airline#extensions#languageclient#show_line_numbers = 1
let airline#extensions#languageclient#open_lnum_symbol = '(L'
let airline#extensions#languageclient#close_lnum_symbol = ')'

let g:airline#extensions#nerdtree_statusline = 1

let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#quickfix#location_text = 'Location'

let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s: '
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

let g:airline#extensions#tabline#buffer_idx_format = {
    \ '0': '0',
    \ '1': '1',
    \ '2': '2',
    \ '3': '3',
    \ '4': '4',
    \ '5': '5',
    \ '6': '6',
    \ '7': '7',
    \ '8': '8',
    \ '9': '9'
    \}

noremap  <leader>0 :tablast<cr>
nnoremap <leader><C-t> :tabnew<CR>
inoremap <leader><C-t> <Esc>:tabnew<CR>

let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#show_message = 1
let b:airline_whitespace_checks =
  \  [ 'indent', 'trailing', 'long', 'mixed-indent-file', 'conflicts' ]
let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline#extensions#whitespace#mixed_indent_format =
   \ 'mixed-indent[%s]'
let g:airline#extensions#whitespace#long_format = 'long[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format =
   \ 'mix-indent-file[%s]'
let g:airline#extensions#whitespace#conflicts_format = 'conflicts[%s]'
let b:airline_whitespace_trailing_regexp = '\s$'
let g:airline#extensions#whitespace#symbol = '!'
let airline#extensions#c_like_langs =
   \ ['arduino', 'c', 'cpp', 'cuda', 'go', 'javascript', 'ld', 'php']
