set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/vim-easy-align'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plugin 'davidhalter/jedi-vim'
Plugin 'morhetz/gruvbox'
Plugin 'kien/ctrlp.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'


call vundle#end()            " required
filetype plugin indent on    " required

" Plugin Options
" Jedi use tabs to move between options
let g:jedi#use_tabs_not_buffers = 1

" For Vim-splits
let g:jedi#use_splits_not_buffers = "left"

" Shows the method doc string
let g:jedi#show_call_signatures = "0"

" Turn on and off Jedi
let g:jedi#completions_enabled = 0

" Vim color
let g:afterglow_blackout=1
let g:airline_theme='afterglow'

" Dropdown, currently hidden
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

" control p
let g:ctrlp_working_path_mode = 'r'

" Keyboard shortcut for nerdtree
:nnoremap <C-o> :NERDTree<CR>
map <silent> <C-o> :NERDTreeToggle<CR>

" Color scheme
set background=light    " Setting dark mode
syntax enable
colorscheme afterglow

" colorscheme gruvbox
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

" highlights to red when past the 80 character limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%100v.\+/

" allows backspace to move over line break
set backspace=indent,eol,start

" Press Space to turn off highlighting and clear any message already
" displayed.
set hlsearch
nnoremap <Space> :set hlsearch!<CR>

" new escape double tap
inoremap `` <esc>

" highlights trailing white spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
set cindent
filetype indent on


" -------------------------------------------------------------------------------------------------
" Notes
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
