" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
  let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
  let g:gutentags_modules += ['gtags_cscope']
  set cscopetag
  set cscopeprg='gtags-cscope'
endif

" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')

if !isdirectory(g:gutentags_cache_dir)
   silent! call mkdir(g:gutentags_cache_dir, 'p')
endif

" 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extras=+q，注意
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = expand('~/.vim/share/gtags/gtags.conf')

let g:gutentags_plus_nomap = 1

noremap <silent> <leader>s :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>g :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>c :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>t :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>e :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>f :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>i :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>d :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>a :GscopeFind a <C-R><C-W><cr>

"let g:gutentags_define_advanced_commands = 1
"let g:gutentags_trace = 1
