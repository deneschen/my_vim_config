" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'cpp': ['clangd', '-j=5', '-completion-style=detailed', '-background-index', '-all-scopes-completion', '--suggest-missing-includes'],
    \ 'c': ['clangd', '-j=5',  '-completion-style=detailed', '-background-index', '-all-scopes-completion', '--suggest-missing-includes'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

let g:LanguageClient_diagnosticsList = 'Disabled'

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

let g:LanguageClient_rootMarkers = ['.root', 'project.*', '.git']
