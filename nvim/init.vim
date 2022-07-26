  set relativenumber
  set splitbelow
  set number
  set nohlsearch
  set tabstop=4 softtabstop=4
  set shiftwidth=4
  set expandtab
  set smartindent
  set incsearch
  set background=dark
  set encoding=utf-8
  set hidden
  set nobackup
  set nowritebackup
  set scrolloff=8
  set cmdheight=2
  set updatetime=300
  set shortmess+=c
  set signcolumn=yes
  set laststatus=2
  set termguicolors

  "icons
  set guifont=DroidSansMono\ Nerd\ Font\ 11

  call plug#begin('~/.vim/plugged')

  Plug 'gruvbox-community/gruvbox'
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-eunuch'
  Plug 'airblade/vim-gitgutter'
  Plug 'itchyny/lightline.vim'
  Plug 'alvan/vim-closetag'
  Plug 'leafOfTree/vim-vue-plugin'

  call plug#end()

  colorscheme gruvbox
  hi Normal guibg=NONE ctermbg=NONE

  "NERDtree config
  nnoremap <C-t> :NERDTreeToggle<CR>
  nnoremap <C-f> :NERDTreeFind<CR>

  "coc config
  noremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-@> coc#refresh()

  " Make <CR> auto-select the first completion item and notify coc.nvim to
  " format on enter, <cr> could be remapped by other vim plugin
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  "fzf config
  nnoremap <C-p> :Files <CR>

  "vim-closetag config
  " filenames like *.xml, *.html, *.xhtml, ...
  " These are the file extensions where this plugin is enabled.
  "
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.js'

  " filenames like *.xml, *.xhtml, ...
  " This will make the list of non-closing tags self-closing in the specified files.
  "
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.vue'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"coc Prettier and Autopairs
command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd FileType * let b:coc_pairs_disabled = ['<']

"coc Hightlight settings
autocmd CursorHold * silent call CocActionAsync('highlight')
