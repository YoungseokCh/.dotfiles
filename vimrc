execute pathogen#infect()
syntax on
filetype plugin indent on

set ttymouse=xterm2
set mouse=a

let g:zenburn_high_Contrast=1
" colorscheme zenburn
let g:solarized_termcolors=256
let my_colorschemes = ['dracula', 'zenburn', 'solarized']
let random_colorscheme = my_colorschemes[rand() % (len(my_colorschemes))]
if random_colorscheme == 'solarized'
	if (rand() % 2 == 0)
		set background=dark
	else
		set background=light
	endif
else
	set background=dark
endif



if &background ==# 'dark'
	augroup CoqtailHighlights
	autocmd!
	autocmd ColorScheme *
		\  hi def CoqtailChecked ctermbg=237
    		\| hi def CoqtailSent    ctermbg=60
	augroup END
else
	augroup CoqtailHighlights
		autocmd!
		autocmd ColorScheme *
					\  hi def CoqtailChecked ctermbg=252
					\| hi def CoqtailSent ctermbg=146
	augroup END
endif

execute 'colorscheme' random_colorscheme
set cursorline
