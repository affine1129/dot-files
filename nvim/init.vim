" Keymaps translated from `nvim/lua/keymaps.lua`

" Set leader to space if not already set
if !exists("g:mapleader")
	let mapleader = " "
endif

" Normal mappings (non-recursive + silent where appropriate)
nnoremap <silent> ; :
nnoremap <silent> <Space><Space> za

" Insert mode conveniences
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
inoremap <silent> <C-j> j
inoremap <silent> <C-k> k

" Window movement
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-h> <C-w>h

" Resize windows (kept as in Lua config)
nnoremap <silent> > <C-w>>
nnoremap <silent> < <C-w><

" Indent mappings
nnoremap <silent> <Tab> >>
nnoremap <silent> <S-Tab> <<
vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv

" Movement across wrapped lines
nnoremap <silent> j gj
vnoremap <silent> j gj
nnoremap <silent> k gk
vnoremap <silent> k gk

" Jump history (preserve default behavior)
nnoremap <silent> <C-i> <C-I>
nnoremap <silent> <C-o> <C-O>

" Select all
nnoremap <silent> <C-S-a> gg<S-v>G

" Increment / decrement
nnoremap <silent> <S-Up> <C-a>
nnoremap <silent> <S-Down> <C-x>

" Tab navigation
nnoremap <silent> <C-[> gT
nnoremap <silent> <C-]> gt
nnoremap <silent> <C-w><C-w> :tabclose<CR>

" Disable plain <Esc> in normal mode (as in lua mapping)
nnoremap <silent> <ESC> <Nop>

" Split shortcuts" End of keymaps

