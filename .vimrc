set number
set nobackup
set noswapfile
set scrolloff=15
set visualbell t_vb=
set hidden "保存されていないファイルがあるときでも別のファイルを開くことが出来る
"set clipboard=unnamed,autoselect
set backspace=indent,eol,start
set ruler "カーソルの行数を表示
set cmdheight=1 "コマンドラインに使われる行数
set title "端末のタイトルバーにVimって表記
set linespace=0 "行間
set wildmenu "コマンドライン補完を拡張モードで行う
set showcmd "入力中のコマンドを最下行に表示
set textwidth=0 "1行の最大文字数
set undodir=$HOME/.vim/undodir
let g:netrw_liststyle=3 "netrwは常にtree view


"------------------------------------
" 検索
"------------------------------------
set hlsearch
set incsearch "インクリメンタルサーチ
set ignorecase "大文字小文字を無視
set smartcase "大文字で検索した時、小文字を無視
set history=50 "q: q/ q?した時に覚えておく数
nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>


"------------------------------------
" インデント
"------------------------------------
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set shiftwidth=4 "自動インデントでずれる幅
set softtabstop=2 "タブキー押下時に挿入される文字幅を指定
"set expandtab "タブの代わりにインデントを使う
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
augroup IndentGroup
    autocmd FileType python setl tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType javascript setl tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType tag setl tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType php setl tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType coffee setl tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType ruby setl tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType smarty setl tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType html setl tabstop=4 shiftwidth=4 softtabstop=4
augroup END


"------------------------------------
" 自動閉じ
"------------------------------------
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>



"------------------------------------
" Insert mode like emacs
"------------------------------------
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-e> <End>
inoremap <C-a> <Home>
inoremap <C-h> <Backspace>
inoremap <C-d> <Del>


"------------------------------------
" ウィンドウの移動 
"------------------------------------
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j


"------------------------------------
" ウィンドウの移動 
"------------------------------------
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j


"------------------------------------
" コマンドの移動 
"------------------------------------
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
cnoremap <C-k> <C-\>e getcmdpos() == 1 ?
  \ '' : getcmdline()[:getcmdpos()-2]<CR>
cnoremap <C-y> <C-r>*


"------------------------------------
" その他key remap
"------------------------------------
nnoremap Y y$


"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')


" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('cdmedia/itg_flat_vim')


" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


"------------------------------------
" neocomplete.vim 
"------------------------------------
let g:neocomplete#enable_at_startup = 1


"------------------------------------
" NERDTree
"------------------------------------

" toggleのkey remap
noremap nt :NERDTreeToggle<CR>

" ファイルの色
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('py',     'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('js',     'Red',     'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('rb',     'Red',     'none', 'red',     '#151515')
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('conf',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('json',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('html',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('styl',   'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('css',    'cyan',    'none', 'cyan',    '#151515')


"------------------------------------
" Airline
"------------------------------------
set laststatus=2
set showtabline=2 " 常にタブラインを表示
set t_Co=256 " この設定がないと色が正しく表示されない
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='papercolor' "落ち着いた色調が好き
let g:airline_powerline_fonts = 1


"------------------------------------
" Colorscheme
"------------------------------------
colorscheme itg_flat
