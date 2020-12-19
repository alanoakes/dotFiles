" + ------------------------------------------------------------------------- +
" + gVim Resource File                                                        + 
" + ------------------------------------------------------------------------- +
" Date of download 2020-12-17 Thu

" + -------------------------------------------------------------------------- +
" + gVim GUI Options 																													 +
" + -------------------------------------------------------------------------- +
set clipboard=unnamed
"set guioptions -=m  " remove menu bar
set guioptions -=T  " remove tool bar
set guioptions-=r   " remove scroll bar
set encoding=utf8


" + -------------------------------------------------------------------------- +
" + Plugins 																																	 +
" + -------------------------------------------------------------------------- +
" source pthyon libs ----------------------------------
set pythonthreehome=C:\Python36-32\
set pythonthreedll=C:\Python36-32\python36.dll
" Plugin Manager --------------------------------------
call plug#begin(expand('~/.vim/plugged'))
  Plug 'arcticicestudio/nord-vim'
  Plug 'junegunn/gv.vim'
  Plug 'plasticboy/vim-markdown'
	Plug 'godlygeek/tabular'
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
call plug#end()

" + -------------------------------------------------------------------------- +
" + font configs 	  																													 +
" + -------------------------------------------------------------------------- +
if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI
	endif
endif

" + -------------------------------------------------------------------------- +
" + colorscheme and syntax configs 																						 +
" + -------------------------------------------------------------------------- +
" nord configs -----------------------------------
set backspace=indent,eol,start
colorscheme nord
set background=dark 
set laststatus=2
let g:nord_cursor_line_number_background = 1                                
let g:nord_uniform_status_lines = 1                                         
let g:nord_uniform_diff_background = 1                                      
let g:nord_bold = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_underline = 1 
let g:nord_italic_comments = 1
let g:nord_underline = 1
" airline/powerline configs ----------------------
let g:airline_stl_path_style = 'short'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 0

" + -------------------------------------------------------------------------- +
" + Standard Vi Configs 																											 +
" + -------------------------------------------------------------------------- +

" text editing -----------------------------------
set showtabline=2
set tabstop=2
set shiftwidth=2
filetype indent on
syntax on
set number
set cursorline
set cursorcolumn
set nowrap
set smartindent
set colorcolumn=80

" split behavior --------------------------------
set splitbelow splitright

" Brackets ---------------------------------------
set showmatch
set mat=2

" Search and Replace -----------------------------
set ignorecase   " To ignore case when searching.
set smartcase    " When searching try to be smart about cases.
set hlsearch     " To highlight search results.
set incsearch    " To make search act like search in modern browsers.
set magic        " For regular expressions turn magic on.

" + -------------------------------------------------------------------------- +
" + Key Mappings 																															 +
" + -------------------------------------------------------------------------- +
" leaders ------------------------------------
let mapleader = ","
let g:mapleader = ","
" file mappings ------------------------------
nmap <leader>so :source $HOME\_vimrc<CR>
nmap <leader>rc :vi $HOME\_vimrc<CR>
nmap <leader>fn :enew<CR>
nmap <leader>fd :cd %:h<CR>

" + -------------------------------------------------------------------------- +
" + PlugIns                                  																	 +
" + -------------------------------------------------------------------------- +

" markdown configs -------------------------------
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_folding_disabled = 1

" emmet configs ----------------------------------
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" NerdTree config --------------------------------
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <leader>nn :NERDTreeToggle<CR>

