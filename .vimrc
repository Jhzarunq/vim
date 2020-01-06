set nocompatible              " be iMproved, required


so ~/.vim/plugins.vim

syntax enable

let g:ctrlp_working_path_mode = 'ra'                                                                                   
let g:ctrlp_extensions = ['buffertag'] 


let g:php_cs_fixer_php_path = "F:/php.exe"               " Path to PHP
let g:php_cs_fixer_path = "C:/Users/15743/php-cs-fixer"
let g:php_cs_fixer_rules = "@PSR2"   
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_config_file = "C:/Users/15743/.php_cs.dist"

""'colorscheme base16-material
colorscheme base16-tomorrow-night-eighties
set guifont=Inconsolata:h13
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set fileencoding=utf-8
set ts=4
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
inoremap ( ()<LEFT>
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>


set t_CO=256
set linespace=6
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set noerrorbells visualbell t_vb=
set autowriteall
set complete=.,w,b,u
set go=
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 

set backspace=indent,eol,start
let mapleader = ','
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' 
hi LineNr guibg=bg
set foldcolumn=0
hi foldcolumn guibg =bg

hi vertsplit guifg =bg guibg =bg

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
imap <A-l> <Right>
imap <A-h> <Left>
nmap <A-1> :NERDTreeToggle<cr>
nmap <C-P> :CtrlP<cr>
"brew install ctags
nmap <C-R> :CtrlPBufTag<cr>
nmap <C-E> :CtrlPMRUFiles<cr>
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-D>'
let g:multi_cursor_next_key            = '<C-D>'
let g:multi_cursor_skip_key            = '<C-K>'
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers -noheading'
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:15,results:15'

let NERDTreeHijackNetrw = 0

function! IPhpInsertUse()
	call PhpInsertUse()
	call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
	call PhpExpandClass()
	call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>
nmap <Leader>w :w!<cr>

vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>



set nohlsearch
set incsearch

imap jj <Esc>
nmap <Leader>ev :tabedit $MYVIMRC<cr>


augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
if has('gui_running') && has("win32")
	au GUIEnter * simalt ~x
endif
