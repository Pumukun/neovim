call plug#begin('~/.vim/plugged')

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'mrjones2014/nvim-ts-rainbow'
Plug 'habamax/vim-godot'
Plug 'lervag/vimtex'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'mbbill/undotree'

Plug 'Exafunction/codeium.nvim', { 'branch': 'main' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'ryanmsnyder/toggleterm-manager.nvim'
Plug 'akinsho/nvim-toggleterm.lua'

" barbar
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

"colorschemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'junegunn/seoul256.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/sonokai'

" Initialize plugin system
call plug#end()

lua << EOF
require('keymaps')
require('colorscheme')
require('misc')
require('settings')

change_color_scheme('purify', 'dark')

EOF

nnoremap <silent> gt :call <SID>toggle_diagnostics()<CR>

function! s:toggle_diagnostics()
  if coc#util#get_config('diagnostic').enable
    set signcolumn=yes
    call coc#config('diagnostic', { 'enable': v:false })
  else
    set signcolumn=yes
    call coc#config('diagnostic', { 'enable': v:true })
  endif
  silent call coc#rpc#restart()
endfunction

" vim airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='deus'
let g:airline#extensions#tabline#formatter = 'default'

let g:rainbow_active = 1
