" ---------- Plugins
" Uncomment and then install these using :PlugInstall
call plug#begin()
" Plug 'sbdchd/neoformat' " Format code
" Plug 'lambdalisue/suda.vim' " Easily write sudo file
" Plug 'neoclide/coc.nvim' " vs code like extensions for coding https://github.com/neoclide/coc.nvim
" Plug 'pseewald/vim-anyfold' " Fold Code, enable the config at the bottom of .vimrc config file
call plug#end()

" ---------- Set
" Sets number on left
set number
" Sets relative number on left
set relativenumber
" Highlight all searches done
set hlsearch
" Indent automatically
set smartindent
" Indentation width in spaces
set tabstop=4
" Use actual spaces instead of tabs
set expandtab
" Autoindentation width in spaces
set shiftwidth=4
" Set clipboard as global
set clipboard+=unnamedplus
" Colorscheme
colorscheme evening
" Automatically write when opening another file
set autowrite
" No word wrapping
set nowrap
" Show line and column at bottom right
set ruler
" Set history size for commands, (default is 50)
set history=1000
" Ignore case sensitve search
set ignorecase smartcase
" Indendation
set autoindent smarttab expandtab
set list
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«,nbsp:¬
set scrolloff=8 sidescrolloff=5
" leader key timeout time
set ttimeout ttimeoutlen=1 timeoutlen=500
" prevent creation of swap files
set noswapfile nowritebackup nobackup
" Wild menu triggered by tab
set wildmenu wildmode=list:full
set wildignore=*.o,*.obj,tmp,.git,node_modules,bower_components,.DS_Store,build
" show last entered command at bottom
set showcmd
" Show cursor line
set cursorline
" Height of popup menu
set pumheight=20
" Display bottom line (for status messages)
set display+=lastline
" Split display position
set splitright splitbelow
" Disable vim fold
set nofoldenable
" Cursor support
set mouse=a

" ---------- Mappings
" Space bar is the leader key
let mapleader = " "

" ----- Normal mode
" --- Writing and quiting ease
noremap <Leader>ww :w<CR>
noremap <Leader>ws :SudaWrite<CR>
noremap <Leader>wa :wa<CR>
noremap <Leader>wq :wq<CR>
noremap <Leader>qq :q!<CR>
noremap <Leader>Q :q!<CR>
noremap <Leader>qa :qa!<CR>

" --- Options toggling
noremap <Leader>nw :set nowrap!<CR>
noremap <Leader>nc :set cursorline!<CR>
noremap <Leader>h :set hlsearch!

" --- Replacing text using regex
noremap <Leader>r :s///g
noremap <Leader><S-R> :%s///g
noremap <Leader>ya :norm mmggVGy'm<CR>

" --- Doom emacs like writing
" noremap <Leader>ba :w! backup<CR> " create a backup
noremap <Leader>bd :q!<CR>
noremap <Leader>bs :w<CR>

" --- Tabs
nnoremap <Leader>t :tabe ./
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-right> :tabprevious<CR>
nnoremap <C-left> :tabnext<CR>
" Config file
nnoremap <Leader>T :tabe ~/.vimrc <CR>

" --- Other mappings
" plugins installation shortcut
noremap <Leader>pi :PlugInstall<CR>
" list files here
noremap <Leader>l :!ll<CR>
" Toggle fold
noremap <Tab> za
" Toggle unfold
noremap <S-Tab> zi
noremap k gk
noremap j gj
map <F8> :Neoformat <cr>
map <F7> :!mkdir 
map <F6> :!touch 
noremap <Leader><Leader> :norm mzI#<ESC>'z<CR>

" ----- Insert mode
map Q <Nop>
map K <Nop>
" --- Centering whenever possible
map n nzz
map } }zz
map { {zz
map G Gzz
map g; g;zz
" easy and quick escape
inoremap jk <Esc>
" ctrl + backspace in vim
inoremap <C-H> <C-W>

" ----- Commands
command! Q q
command! Qa qa
command! W w
command! Wa wa

" ---------------- New unorganized
" set visualbell
"set fileformats+=mac

" ---------------- vim-anyfold config
" filetype plugin indent on " required
" syntax on                 " required
" autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" set foldlevel=0  " close all folds by default
" set foldlevel=99 " open all folds by default

