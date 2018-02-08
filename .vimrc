" Enable vim to detect the type of file being edited
filetype plugin indent on

" Set global whitespace conventions
autocmd Filetype * setlocal ts=4 sts=4 sw=4 

" Set whitespace conventions for specific filetypes 
autocmd Filetype pug        setlocal ts=2 sts=2 sw=2 
autocmd Filetype html       setlocal ts=2 sts=2 sw=2 
autocmd Filetype json       setlocal ts=2 sts=2 sw=2 
autocmd Filetype yaml       setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 nocindent
autocmd Filetype python     setlocal ts=2 sts=2 sw=2 
autocmd Filetype c          setlocal ts=3 sts=3 sw=3 
autocmd Filetype cpp        setlocal ts=3 sts=3 sw=3 
autocmd Filetype java       setlocal ts=4 sts=4 sw=4 
autocmd Filetype make       setlocal noexpandtab

" Fuzzy file search setup (fzf)
set rtp+=~/.fzf
nnoremap <C-T> :call fzf#run({ 'source': 'find * -path node_modules -prune -o -print', 'sink': 'vs' })<CR>
nnoremap <C-N> :call fzf#run({ 'source': 'find * -path node_modules -prune -o -print', 'sink': 'tabedit' })<CR>
nnoremap <C-O> :call fzf#run({ 'source': 'find * -path node_modules -prune -o -print', 'sink': 'e' })<CR>

" Sick statusline (there is a space at the end)
set laststatus=2
set statusline=
set statusline+=%#DiffText#     "Blue color
set statusline+=%t              "Filename
set statusline+=\ %h            "Help file flag
set statusline+=%#DiffAdd#      "Green color
set statusline+=%m              "Modified flag
set statusline+=%#WarningMsg#   "Red color
set statusline+=%r              "Read only flag
set statusline+=%#DiffChange#   "Yellow color
set statusline+=\ %y            "File type
set statusline+=%<              "Truncate line here if too long
set statusline+=%#FoldColumn#   "Text color
set statusline+=\ [%{expand('%:h')}] "Current working directory
set statusline+=%#DiffText#
set statusline+=%=              "End of left aligned items
set statusline+=%c,%l/%L\ %P\ 
set wildmenu

" Set up indent goodies
set ai si             " autoindent, smartindent
set nocindent         " Turn off cindent
set expandtab         " Expand tabs to spaces
set formatoptions+=ro " Auto insert a comment character when writing comments

" Aesthetic settings
syntax on           " Enable syntax highlighting
set number          " Show line numbers 
set showmode        " Display the editing mode (e.g., INSERT mode)
set hlsearch        " Highlight results when using the '/' command
set colorcolumn=80  

" Netrw Settings
let g:netrw_liststyle=3

" vim-colors-solarized settings
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

" vim-jsdoc settings
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1

" Gundo settings
" Show the preview window under the current window
let g:gundo_preview_bottom = 1
" Close the Gundo windows when reverting
let g:gundo_close_on_revert = 1

" indentLine settings
"let g:indentLine_char = '┆'
let g:indentLine_char = '┊'
let g:indentLine_color_term = 240

" Mappings
let mapleader = "," " Set the default prefix key for commands
" Gundo mappings
nnoremap <leader>u :GundoToggle<CR>
" Tab mappings
nnoremap <leader>e :tabedit
nnoremap H :tabp<CR>
nnoremap L :tabn<CR>
" alphanumeric case insensitive sort
vnoremap <leader>s :sort i /\/[A-z]/<CR>
