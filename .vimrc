" Enable vim to detect the type of file being edited
filetype plugin on

" Set global whitespace conventions
autocmd Filetype * setlocal ts=4 sts=4 sw=4 

" Set whitespace conventions for specific filetypes 
autocmd Filetype html       setlocal ts=2 sts=2 sw=2 
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 
autocmd Filetype python     setlocal ts=2 sts=2 sw=2 
autocmd Filetype c          setlocal ts=3 sts=3 sw=3 
autocmd Filetype cpp        setlocal ts=3 sts=3 sw=3 
autocmd Filetype java       setlocal ts=4 sts=4 sw=4 
autocmd Filetype make       setlocal noexpandtab

" Set up indent goodies
set ai si ci          " autoindent, smartindent, cindent
set expandtab         " Expand tabs to spaces
set formatoptions+=ro " Auto insert a comment character when writing comments

" Aesthetic settings
syntax on           " Enable syntax highlighting
set number          " Show line numbers 
set showmode        " Display the editing mode (e.g., INSERT mode)
set hlsearch        " Highlight results when using the '/' command
set colorcolumn=80  

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

" Mappings
let mapleader = "," " Set the default prefix key for commands
" Gundo mappings
nnoremap <leader>u :GundoToggle<CR>
" Tab mappings
nnoremap <leader>e :tabedit
