" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set expandtab
set shiftwidth=4
set softtabstop=4

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" Enable dvi and pdf
let g:Tex_MultipleCompileFormats='dvi,pdf'

" If you use pdflatex, use this. Otherwise, set this to 'dvi'
let g:Tex_DefaultTargetFormat='pdf'

" I use okular to view pdf files
let g:Tex_ViewRule_pdf='okular --unique > /dev/null 2>&1'

" Enable FoldedEnviroments
let g:Tex_FoldedEnvironments=",algorithmic"

" About Bibtex
" let g:Tex_BibtexFlavor = 'bibtex'
" let g:Tex_BIBINPUTS = "%\.bib"
" let g:Imap_UsePlaceHolders = 0 "desabilitando PlaceHolders

" European characters
imap <C-b> <Plug>Tex_MathBF
imap <C-c> <Plug>Tex_MathCal
imap <C-l> <Plug>Tex_LeftRight

" Insert e-acute
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine

let g:tex_indent_brace = 0

" Update time stamp
autocmd Bufwritepre,filewritepre *.tex execute "normal ma"
autocmd Bufwritepre,filewritepre *.tex exe "1," . 10 . "g/% Last Change: .*/s/% Last Change: .*/% Last Change: " .strftime("%d.%m.%y %X")
autocmd bufwritepost,filewritepost *.tex execute "normal `a"

" comma always followed by a space
inoremap  <,>  ,<Space>
