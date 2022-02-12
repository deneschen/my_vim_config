" Required for operations modifying multiple buffers like rename.
set hidden

"    \ 'cpp': ['clangd', '-j=5', '-completion-style=detailed', '-background-index', '-all-scopes-completion', '--suggest-missing-includes'],
"    \ 'c': ['clangd', '-j=5',  '-completion-style=detailed', '-background-index', '-all-scopes-completion', '--suggest-missing-includes'],
let g:LanguageClient_serverCommands = {
    \ 'cpp': ['ccls', '--init={"cache": {"directory": "/tmp/ccls-cache"}, "highlight": { "lsRanges" : true }}'],
    \ 'c': ['ccls', '--init={"cache": {"directory": "/tmp/ccls-cache"}, "highlight": { "lsRanges" : true }}'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

function SetLSPShortcuts()
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

augroup LSP
  autocmd!
  autocmd FileType cpp,c call SetLSPShortcuts()
augroup END

let g:LanguageClient_rootMarkers = ['.root', 'project.*', '.git']

" Always draw the signcolumn.
set signcolumn=yes

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

"set completefunc=LanguageClient#complete
let g:LanguageClient_diagnosticsEnable = 0
