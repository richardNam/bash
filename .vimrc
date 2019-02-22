" plugin manager
" https://github.com/junegunn/vim-plug

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" autocomplete, https://github.com/davidhalter/jedi-vim
Plug 'davidhalter/jedi-vim'

" supertab, https://github.com/ervandew/supertab
Plug 'ervandew/supertab'

" gruvbox, https://github.com/morhetz/gruvbox color scheme
Plug 'morhetz/gruvbox'

" ctrl p, 
Plug 'kien/ctrlp.vim'

" Initialize plugin system
call plug#end()

" Plugin Options
" Jedi use tabs to move between options
let g:jedi#use_tabs_not_buffers = 1

" For Vim-splits
let g:jedi#use_splits_not_buffers = "left"

" Shows the method doc string
let g:jedi#show_call_signatures = 0

" Turn on and off Jedi
let g:jedi#completions_enabled = 1

" Turn on and off the scratch/preview
let g:SuperTabClosePreviewOnPopupClose = 1

" Keyboard shortcut for nerdtree
:nnoremap <C-o> :NERDTree<CR>
map <silent> <C-o> :NERDTreeToggle<CR>

" Color scheme
set background=dark    " Setting dark mode
colorscheme gruvbox
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Line numbers
set number

" vim splits, tab short cuts, 
" https://www.techrepublic.com/blog/linux-and-open-source/
" use-tabs-to-open-multiple-files-in-vim/
map <C-d><up> :tabr<cr>
map <C-d><down> :tabl<cr>
map <C-d><left> :tabp<cr>
map <C-d><right> :tabn<cr>

" Over the line (100 char)
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" turn of pydoc
set completeopt-=preview

