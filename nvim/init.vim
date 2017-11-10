set shell=/usr/local/bin/fish"

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" ==== PLUGIN INSTALLATION ===
" {{{
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rking/ag.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/fish.vim',   { 'for': 'fish' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --tern-completer' }
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-markdown',     { 'for': 'markdown' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'keith/investigate.vim'
Plug 'benekastah/neomake'
Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'tomtom/tcomment_vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ap/vim-css-color'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/vim-easy-align'
Plug 'fatih/vim-go'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'mhartington/oceanic-next'
Plug 'dracula/vim'
call plug#end()
" }}}

" Colorscheme
" {{{
set t_Co=256
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme dracula
syntax on
" }}}

let javascript_enable_domhtmlcss=1
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_open_list = 2

" ==== EDITOR SETUP ====
" {{{
set noshowmode
set cc=101
set noswapfile
set backup
set clipboard=unnamed
set wrap
set linebreak
set list
set textwidth=0
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle.
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=500 " Increase history from 20 default to 1000
set expandtab
set shiftwidth=2 " Indent by 2 spaces
set softtabstop=2
set smarttab
set splitbelow
set splitright
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
set winminheight=0
set synmaxcol=800
set title
set number
set guifont=Monaco:h14
" }}}


" Change mapleader
" {{{
let mapleader=","
" }}}

" Backups
" {{{
set backupdir=~/.config/nvim/backups
set directory=~/.config/nvim/swaps
set undodir=~/.config/nvim/undo

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
" }}}

" Paste toggle (,p)
" {{{
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>
" }}}

" Faster autocomplete
" {{{
inoremap <C-space> <C-x><C-o>
" }}}

" Buffer navigation (,,) (,]) (,[) (,ls)
" {{{
map <Leader>] :bnext<CR>
map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>
" }}}

" Close Quickfix window (,qq)
" {{{
map <leader>qq :close<CR>
" }}}

" Close llist
" {{{
map <leader>lc :lclose<CR>
" }}}
"
" NERD Commenter
" {{{
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }
" }}}

" Sudo write (,W)
" {{{
noremap <leader>W :w !sudo tee %<CR>
" }}}

" Clear last search (,qs)
" {{{
map <silent> <leader>qs <Esc>:noh<CR>
" }}}

" Better Completion
" {{{
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview
" }}}

" Smarter code indenting
" {{{
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
" }}}

" Enable folding
" {{{
set foldcolumn=0
set foldenable
set foldlevel=0
set foldmethod=manual
set foldtext=FoldText()
" }}}

" Speed up viewport scrolling
" {{{
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" }}}

" Faster split resizing (+,-)
" {{{
if bufwinnr(1)
		map + <C-W>+
		map - <C-W>-
endif
" }}}

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
" {{{
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-L> <C-W>l
" }}}

" Yank from cursor to end of line
" {{{
nnoremap Y y$
" }}}

" Insert newline
" {{{
map <leader><Enter> o<ESC>
" }}}

" Search and replace word under cursor (,*)
" {{{
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>  
" }}}

" Strip trailing whitespace (,ss)
" {{{
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>
" }}}

" Toggle show tabs and trailing spaces (,c) 
" {{{
  set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
  set fcs=fold:-
  nnoremap <silent> <leader>c :set nolist!<CR>
  " }}}
" Join lines and restore cursor location (J)
" {{{
nnoremap J mjJ`j
" }}}

" Toggle folds (<Space>)
" {{{
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>
" }}}

" Fix page up and down
" {{{
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>
" }}}

" Filetypes setup
" {{{
filetype plugin indent on

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Common Ruby files
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Nu
au BufNewFile,BufRead *.nu,*.nujson,Nukefile setf nu

" Coffee Folding
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" ZSH
au BufRead,BufNewFile .zsh_rc,.functions,.commonrc,.aliases set ft=zsh

" Set syntax highlight
autocmd BufEnter *.ctp set filetype=php
autocmd BufEnter *.md set filetype=markdown
autocmd BufEnter *.markdown set filetype=markdown
autocmd BufEnter *.less set filetype=css
autocmd BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss set iskeyword+=-
autocmd BufEnter *.asc set filetype=javascript
autocmd BufEnter *.as set filetype=javascript
autocmd BufEnter *.ds set filetype=javascript
autocmd BufEnter *.es6 set filetype=javascript
autocmd BufEnter *.json set filetype=javascript
autocmd BufEnter *.ejs set filetype=html
autocmd BufWritePost * Neomake
" }}}

" Only show cursorline in the current window and in normal mode.
" {{{
augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END
" }}}

" Highlight VCS conflict markers
" {{{
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
" }}}


" ==== PLUGIN CONFIGURATION ====

" airline.vim
" {{{
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='oceanicnext'
" }}}
"
" EasyAlign.vim
" {{{
vmap <Enter> <Plug>(EasyAlign)
" }}}

" Investigate.vim
" {{{
let g:investigate_url_for_javascript="https://developer.mozilla.org/en-US/search?q=^s"
let g:investigate_url_for_html="https://developer.mozilla.org/en-US/search?q=^s"
let g:investigate_url_for_css="https://developer.mozilla.org/en-US/search?q=^s"
" }}}

" JSDoc.vim
" {{{
" let g:jsdoc_allow_input_prompt=1
let g:jsdoc_default_mapping=0
let g:jsdoc_additional_descriptions=1
" }}}

" NerdTree.vim
" {{{
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeClose<cr>:NERDTreeFind<cr>

augroup ps_nerdtree
    au!

    au Filetype nerdtree setlocal nolist
    au Filetype nerdtree nnoremap <buffer> H :vertical resize -10<cr>
    au Filetype nerdtree nnoremap <buffer> L :vertical resize +10<cr>
    " au Filetype nerdtree nnoremap <buffer> K :q<cr>
augroup END

let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    \ '.*\.o$', 'db.db', 'tags.bak', '.*\.pdf$', '.*\.mid$',
                    \ '.*\.midi$']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 0
let NERDTreeChDirMode = 2
"}}}


" Notes.vim {{{
augroup notes_config
  autocmd!
  let g:notes_directories = ['~/Google\ Drive/Notes']
augroup END
" }}}

" CtrlP.vim {{{
augroup ctrlp_config
  autocmd!
  let g:ctrlp_max_files=0
  let g:ctrlp_max_depth=40
  let g:ctrlp_clear_cache_on_exit = 0 " Do not clear filenames cache, to improve CtrlP startup
  let g:ctrlp_lazy_update = 350 " Set delay to prevent extra search
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' } " Use python fuzzy matcher for better performance
  let g:ctrlp_match_window_bottom = 0 " Show at top of window
  let g:ctrlp_max_files = 0 " Set no file limit, we are building a big project
  let g:ctrlp_switch_buffer = 'Et' " Jump to tab AND buffer if already open
  let g:ctrlp_open_new_file = 'r' " Open newly created files in the current window
  let g:ctrlp_dont_split = 'NERD_tree_2'
  let g:ctrlp_open_multiple_files = 'ij' " Open multiple files in hidden buffers, and jump to the first one
  let g:ctrlp_map = '<c-f>'
augroup END
" }}}

" Ag.vim(Silver searcher settings)
" {{{
augroup ag_config
  autocmd!

  if executable("ag")

    map <leader>a :Ag!<space>
    map <leader>A :Ag! "<C-r>=expand('<cword>')<CR>"

    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m

    " Have the silver searcher ignore all the same things as wilgignore
    let b:ag_command = 'ag %s -i --nocolor --nogroup'

    for i in split(&wildignore, ",")
      let i = substitute(i, '\*/\(.*\)/\*', '\1', 'g')
      let b:ag_command = b:ag_command . ' --ignore "' . substitute(i, '\*/\(.*\)/\*', '\1', 'g') . '"'
    endfor

    let b:ag_command = b:ag_command . ' --hidden -g ""'
    let g:ctrlp_user_command = b:ag_command
  endif
augroup END
" }}}



" autoclose.vim
" {{{
nmap <Leader>xa <Plug>ToggleAutoCloseMappings
" }}}
"
