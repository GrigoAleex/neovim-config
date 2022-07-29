:set number
:set autoindent
:set tabstop=4
:set mouse=a
:set smarttab

call plug#begin(stdpath('config') . '/plugged')

  Plug 'https://github.com/vim-airline/vim-airline' " Status bar
  Plug 'https://github.com/preservim/nerdtree' " NerdTree
  Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
  Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
  Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
  Plug 'morhetz/gruvbox' "Theme
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  Plug 'nvim-lua/plenary.nvim'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'sbdchd/neoformat'

call plug#end()
 
  "=================== NerdTree =================
 
  "Hotkeys
  nnoremap <C-f> :NERDTreeFocus<CR>
  nnoremap <C-n> :NERDTree<CR>
  nnoremap <C-b> :NERDTreeToggle<CR>
  nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
  nnoremap <C-p> :Telescope find_files<CR>
  nnoremap <C-s> :w <CR>
  nnoremap <C-q> :wq <CR>
  inoremap jk  <ESC> 
  inoremap kj  <ESC> 
  nmap <F8> :TagbarToggle<CR>

  "Icons 
  let g:NERDTreeDirArrowExpandable="+" 
  let g:NERDTreeDirArrowCollapsible="~"
 
  autocmd vimenter * ++nested colorscheme gruvbox
  
