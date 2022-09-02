call plug#begin('~/.vim/plugged')

Plug 'ziglang/zig.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-gruvbox8'
Plug 'vim-airline/vim-airline'
Plug 'posva/vim-vue'
Plug 'fatih/vim-go'
Plug 'rhysd/vim-clang-format'

call plug#end()

" lsp
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Key Mapping
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Ag<CR>

" fzf
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent

" theme
syntax on
set bg=dark
colorscheme gruvbox8 
"set termguicolors
if (&term =~ '^xterm' && &t_Co == 256)
  set t_ut= | set ttyscroll=1
endif

" globals 
let g:clap_layout = { 'relative': 'editor' }
let g:clang_format#auto_format = 1

" line numbers
set relativenumber
set nu
set nowrap
set scrolloff=8
set signcolumn=number

" others
set hidden
set noerrorbells
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile

