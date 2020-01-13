set nocompatible              " be iMproved, required
set number


so ~/.vim/plugins.vim
so ~/.vim/php-doc.vim
imap <Leader>d <ESC>:call PhpDocSingle()<CR>i
nmap <Leader>d :call PhpDocSingle()<CR>
vnoremap <Leader>d :call PhpDocRange()<CR>

syntax enable
"-------------------------------------EsLint-------------------------------------------"

let g:php_cs_fixer_php_path = "F:/php.exe"               " Path to PHP
let g:php_cs_fixer_path = "C:/Users/15743/php-cs-fixer"
let g:php_cs_fixer_rules = "@PSR2"   
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_config_file = "C:/Users/15743/.php_cs.dist"
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}
"colorscheme base16-tomorrow-night-eighties
colorscheme base16-material
"colorscheme base16-material-darker
"set guifont=Inconsolata:h15
set guifont=Monoid:h14
"set guifont=Fira_Code:h14:b
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set fileencoding=utf-8
set ts=4
set expandtab
set autoindent
set smartindent
set tabstop=4
set tw=80
set shiftwidth=4
set softtabstop=4
set t_CO=256
set linespace=10
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set noerrorbells visualbell t_vb=
set autowriteall
set complete=.,w,b,u
set completeopt=longest,menu
set go=
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 

set backspace=indent,eol,start
let mapleader = ','
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
let g:ctrlp_working_path_mode = 'ra'                                                                                   
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|node_modules|\.sass-cache|vendor|thinkphp|public)$',
  \ 'file': '\v\.(exe|so|dll|xml|md|phar|lock)$',
  \ }
let g:ctrlp_extensions = ['buffertag'] 
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
nmap <Leader>ev :e $MYVIMRC<cr>
"nmap <Leader>en :e C:/Users/15743/vimfiles/snippets/php.snippets<cr>
nmap <Leader>en :e ~/vimfiles/snippets/php.snippets<cr>
nmap <Leader>er :e application/route.php<cr>
vmap <Leader>c dmm
vmap <Leader>p p`mP
vmap <Leader>i Iif(jjlxA){<cr>
vmap <Leader>e Iempty(jjlxA)<cr>
vmap <Leader>m d`mp
imap <Leader>c <Esc>mm
nmap <Leader>t ^f[vf'di-><Esc>f'vf]d
nmap <Leader>b ^vf(df)vf{da?;<Esc>v/}<cr>:s/;//g<cr>/}<cr>vf{di:<Esc>/}<cr>x
vmap <Leader>/ :normal I//<cr>
imap <S-cr> <Esc>o
imap zz <Esc>zzi
nmap <Leader>df $?public<cr>ddda{
nmap <leader>afe Go<Esc>?}<cr>Opubf<Tab> 
nmap <Leader>af /function<cr>/{<cr>]}o<cr>pubf<Tab>
nmap <Leader>afr /function<cr>/{<cr>]}o<cr>prof<Tab>
nmap <Leader>f ,pcf<cr>
"nmap <Leader>af /function<cr>/{<cr>]}o<cr>pubf<Tab>zz<Right>
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'\' : '%%'
function Namespace()
    let l:file = expand('%:h')
    let l:file = substitute(l:file, 'application', 'app','g')
    execute "normal ggonamespace " . l:file."; "
endfunction
function T()
    execute "'<,'>s/admin/aa/g"
endfunction
function Af()
    execute "/function"
    execute "normal Opubf"
endfunction
imap <Leader>t <Esc>:call Namespace()<cr>
imap <Leader>s <Esc>:call Af()<cr>
nmap <Leader>l <Esc>:!php -l %<cr>
imap <Leader>d <Esc>vawda
filetype plugin indent on 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_complete_for_unknown_classes=1
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=2
au BufNewFile,BufRead *.html,*.js,*.vue set expandtab
au BufNewFile,BufRead *.html,*.js,*.vue set autoindent
au BufNewFile,BufRead *.html,*.js,*.vue set fileformat=unix
imap <Leader>b <C-x><C-o>
"-----------------------PHPDoc--------------------------"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-u> :call pdv#DocumentWithSnip()<CR>
nmap <C-n> :e %:h/

"-------------------------------------------------------"


augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

if has('gui_running') && has("win32")
	au GUIEnter * simalt ~x
endif
