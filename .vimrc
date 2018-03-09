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
