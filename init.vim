call plug#begin('~/.vim/plugged')

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'airblade/vim-gitgutter'
" Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'habamax/vim-godot'
Plug 'lervag/vimtex'
Plug 'stevearc/aerial.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'branch': 'master'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'HiPhish/rainbow-delimiters.nvim'

Plug 'MattesGroeger/vim-bookmarks'
Plug 'tom-anders/telescope-vim-bookmarks.nvim'

Plug 'mbbill/undotree'

Plug 'Exafunction/codeium.nvim', { 'branch': 'main' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" nvim dap
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'

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
Plug 'nvim-telescope/telescope.nvim', {'branch': '0.1.x'}
Plug 'ryanmsnyder/toggleterm-manager.nvim'
Plug 'akinsho/nvim-toggleterm.lua'

" barbar
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

"colorschemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'junegunn/seoul256.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/sonokai'
Plug 'Mofiqul/vscode.nvim'
Plug 'oxidescheme/nvim'

" Initialize plugin system
call plug#end()

lua << EOF
require('keymaps')
require('colorscheme')
require('misc')
require('settings')

change_color_scheme('gruvbox-material', 'dark')

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
let g:airline#extensions#tabline#formatter = 'default'

let g:rainbow_active = 1
