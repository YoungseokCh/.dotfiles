syntax on
filetype plugin indent on

set mouse=a
" set cursorline
set enc=utf-8
set fillchars=vert:\│ 

" Undofile setup
if !isdirectory($HOME."/.nvim")
    call mkdir($HOME."/.nvim", "", 0770)
endif
if !isdirectory($HOME."/.nvim/undo-dir")
    call mkdir($HOME."/.nvim/undo-dir", "", 0700)
endif
set undodir=~/.nvim/undo-dir
set undofile

call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' } 
call plug#end()

colorscheme dracula

let g:unicode_map = {
  \ "\\fun"     :   "λ",
  \ "\\mult"    :   "⋅",
  \ "\\ent"     :   "⊢",
  \ "\\valid"   :   "✓",
  \ "\\diamond" :   "◇",
  \ "\\box"     :   "□",
  \ "\\bbox"   	:   "■",
  \ "\\later"  	:   "▷",
  \ "\\pred"   	:   "φ",
  \ "\\and"    	:   "∧",
  \ "\\or"     	:   "∨",
  \ "\\comp"   	:   "∘",
  \ "\\ccomp"  	:   "◎",
  \ "\\all"    	:   "∀",
  \ "\\ex"     	:   "∃",
  \ "\\to"     	:   "→",
  \ "\\sep"    	:   "∗",
  \ "\\lc"     	:   "⌜",
  \ "\\rc"     	:   "⌝",
  \ "\\Lc"     	:   "⎡",
  \ "\\Rc"     	:   "⎤",
  \ "\\lam"    	:   "λ",
  \ "\\empty"  	:   "∅",
  \ "\\Lam"    	:   "Λ",
  \ "\\Sig"    	:   "Σ",
  \ "\\-"      	:   "∖",
  \ "\\aa"     	:   "●",
  \ "\\af"     	:   "◯",
  \ "\\auth"   	:   "●",
  \ "\\frag"   	:   "◯",
  \ "\\iff"    	:   "↔",
  \ "\\gname"  	:   "γ",
  \ "\\incl"   	:   "≼",
  \ "\\latert" 	:   "▶",
  \ "\\update" 	:   "⇝",
  \ "\\\"o"     :   "ö",
  \ "_a"        :   "ₐ",
  \ "_e"        :   "ₑ",
  \ "_h"        :   "ₕ",
  \ "_i"        :   "ᵢ",
  \ "_k"        :   "ₖ",
  \ "_l"        :   "ₗ",
  \ "_m"        :   "ₘ",
  \ "_n"        :   "ₙ",
  \ "_o"        :   "ₒ",
  \ "_p"        :   "ₚ",
  \ "_r"        :   "ᵣ",
  \ "_s"        :   "ₛ",
  \ "_t"        :   "ₜ",
  \ "_u"        :   "ᵤ",
  \ "_v"        :   "ᵥ",
  \ "_x"        :   "ₓ",
\ }

