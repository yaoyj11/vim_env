set nocompatible

filetype plugin on                  " required


"set mouse=a
set backspace=indent,eol,start
autocmd FileType tex    set textwidth=72
autocmd FileType java    setlocal tabstop=2
autocmd FileType py    setlocal tabstop=4
"autocmd FileType python set colorcolumn=120
"autocmd GUIEnter * simalt ~x
"set guifont=courier_new:h11:w6
set guifont=YaHeiConsolasHybrid\ 11
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"set autochdir
"set vbt_vb=
"set nowrap
"set sidescroll=10
set tags+=./tags

" encoding setting
set fileencodings=ucs-bom,utf-8,gb18030,latin1

" theme setting
syntax on
" colo torte
hi Comment ctermfg = blue

" status bar setting
set number
set showmode
set showcmd
set ruler
" file type and indent setting
filetype indent on
set autoindent
set cindent
set smartindent
"set tabstop=2
set expandtab
set list
set listchars=tab:.\ ,trail:.

" search setting
"set ignorecase
set incsearch
set hlsearch

" switch setting
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" completion setting
filetype plugin on
set completeopt=longest,menu
inoremap <C-p> <C-x><C-o>
nnoremap <F2> :!ctags -R --c-kinds=+p --fields=+S<CR>:!cscope -Rbq<CR>:cs add cscope.out<CR>

" taglist setting
let Tlist_WinWidth=25
let Tlist_Use_Left_Window=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Compact_Format=1
let Tlist_Auto_Update=1
let Tlist_Process_File_Always=1
"let Tlist_Sort_Type="name"
let Tlist_Sort_Type="order"
nnoremap <F3> :TlistToggle<CR>
nnoremap <F8> :vertical resize -5<CR>
nnoremap <F9> :vertical resize +5<CR>
nnoremap <F6> :resize -5<CR>
nnoremap <F7> :resize +5<CR>

" NERD_tree setting
let NERDTreeWinSize=20
let NERDTreeWinPos="right"
let NERDTreeAutoCenter=1
let NERDTreeHighlightCursorline=1
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
nnoremap <F4> :NERDTreeToggle<CR>

" autocomplpop.vim
let AutoComplPop_MappingDriven=1
let AutoComplPop_IgnoreCaseOption=1
let AutoComplPop_CompleteoptPreview=1
nnoremap <F5> :AutoComplPopDisable<CR>
let g:Tlist_Ctags_Cmd='/usr/bin/ctags'
let g:pymode_options_max_line_length=120
