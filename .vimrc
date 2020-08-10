" vim resource file

 " Plugins used for vim
call plug#begin(expand('~/.vim/plugged'))

	" List of Plugs
       "Plug 'kaicataldo/material.vim'
       "Plug 'itchyny/lightline.vim'
        Plug 'arcticicestudio/nord-vim'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
	Plug 'jalvesaq/Nvim-R'
	Plug 'ncm2/ncm2'
	Plug 'roxma/nvim-yarp'
        Plug 'gaalcaras/ncm-R'
        Plug 'preservim/nerdtree'
       "Plug 'Raimondi/delimitMate'
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
	Plug 'mattn/emmet-vim'
	Plug 'vimwiki/vimwiki'
	" Initialize plugin system
call plug#end()

" calls for color material scheme
" let g:lightline = { 'colorscheme': 'material_vim' }
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'ocean'
" colorscheme material

" nord colorscheme calls
colorscheme nord                                                            
let g:airline_theme='nord'                                                  
let g:nord_cursor_line_number_background = 1                                
let g:nord_uniform_status_lines = 1                                         
let g:nord_uniform_diff_background = 1                                      
let g:nord_bold = 1                                                         
let g:nord_underline = 1                                                    
set background=dark                                                         
set laststatus=2

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1


" enable true color
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif


" prevent white flashes of background color in vim
if (&term =~ '^xterm' && &t_Co == 256)
   	set t_ut= | set ttyscroll=1
endif

" Set a local leader
let mapleader = ","
let g:mapleader = ","

" NCM2
"autocmd BufEnter * call ncm2#enable_for_buffer()    " To enable ncm2 for all buffers.
"set completeopt=noinsert,menuone,noselect           " :help Ncm2PopupOpen for more

" Nerdtree
map <leader>nn :NERDTreeToggle<CR>                  " Toggle NERD tree

" syntax calls
syntax on
set nu
set cursorline
set cursorcolumn
set colorcolumn=80
set nowrap
set incsearch
set smartindent
set autoindent
set ma
set number
set expandtab
set smarttab
set si

" Searching
set ignorecase
set smartcase
set hlsearch
set magic


" Brackets
set showmatch
set mat=2
set encoding=utf8

" Files & Backup
set nobackup
set nowb
set noswapfile
set ffs=unix,dos,mac

" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" split behavior
set splitbelow splitright

" markdown behavior
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_strikethrough = 1

" emmet mods
let g:user_emmet_mode='n'                " only enable normal mode functions.
let g:user_emmet_install_global = 0      " enable just for html/css
autocmd FileType html,css EmmetInstall   " enable just for html/css

" vimwiki prerequisites
set nocompatible
filetype plugin on

" Tabs and Navigation
map <leader>nt :tabnew<cr>      " To create a new tab.
map <leader>to :tabonly<cr>     " To close all other tabs (show only the current tab).
map <leader>tc :tabclose<cr>    " To close the current tab.
map <leader>tm :tabmove<cr>     " To move the current tab to next position.
map <leader>tn :tabn<cr>        " To swtich to next tab.
map <leader>tp :tabp<cr>        " To switch to previous tab.


" set line numbers & indentation
set backspace=indent,eol,start

