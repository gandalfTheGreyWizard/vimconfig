" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'preservim/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'plasticboy/vim-markdown'
Plug 'ycm-core/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'jmcantrell/vim-virtualenv'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
colorscheme gruvbox
set background=dark
set number
set tabstop=2
set shiftwidth=2
set expandtab
let g:ycm_language_server = [
\{
\'name': 'scala',
\'filetypes': ['scala'],
\'cmdline': ['metals-vim'],
\'project_root_files': [ 'build/sbt' ]
\}
\]
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:ycm_filetype_blacklist = {}
let g:virtualenv_auto_activate = 1

" ale ssettings described here
let g:ale_linters = {
			\   'javascript': ['eslint'],
			\}

nmap <F8> :TagbarToggle<CR>

:tnoremap <Esc> <C-\><C-n>

