execute pathogen#infect()
syntax on
filetype plugin indent on

set ttymouse=xterm2
set mouse=a

" let g:zenburn_high_Contrast=1
" colorscheme zenburn
let my_colorschemes = ['dracula', 'zenburn']
execute 'colorscheme' my_colorschemes[rand() % (len(my_colorschemes) ) ]
set cursorline
