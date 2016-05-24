" Symlink to whatever filetype you want it enabled for,
" e.g., ln -s braces.vim javascript.vim if you want this
" mapping for javascript files.

"imap <buffer> { {}<LEFT>
imap <buffer> ( ()<LEFT>
imap <buffer> <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<RIGHT>" : ")"
