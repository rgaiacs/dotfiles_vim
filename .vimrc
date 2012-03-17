" Show line number
set nu

" Show highlights
syntax on

" Change backgroud color
set background=dark

" Indentation
set shiftwidth=4
set expandtab
set softtabstop=4

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Special characters
inoremap á \'{a}
inoremap Á \'{A}
inoremap à \`{a}
inoremap À \`{A}
inoremap â \^{a}
inoremap Â \^{A}
inoremap ã \~{a}
inoremap Ã \~{A}
inoremap é \'{e}
inoremap É \'{E}
inoremap ê \^{e}
inoremap Ê \^{E}
inoremap í \'{i}
inoremap Í \'{I}
inoremap ó \'{o}
inoremap Ó \'{O}
inoremap õ \~{o}
inoremap Ô \~{O}
inoremap ç \c{c}
