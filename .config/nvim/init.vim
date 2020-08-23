"vscode stuff
if exists('g:vscode')

else

"normal nvim stuff
let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
call plug#end()

let g:vimwiki_list = [{'path': '~/Nextcloud/vimwiki/'}]

"basics:
set number relativenumber
syntax on
set encoding=utf-8
filetype plugin on
set nobackup

"speed up global substitution
nnoremap S :%s//g<Left><Left>

"open terminal here
nnoremap T :!$TERMINAL &<Enter><Enter>

"cursorline and cursorcolumn
"set termguicolors
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=238 cterm=bold guibg=Grey40
highlight CursorColumn ctermbg=238 cterm=bold guibg=Grey40
nnoremap H :set cursorline! cursorcolumn!<CR>

nnoremap <c-H> :nohlsearch<CR>

"case-sensitivity
set ignorecase
set smartcase

"autocenter on insertmode
autocmd InsertEnter * norm zz

"vim clipboard = os clipboard
set clipboard+=unnamed

"splits open at bottom and right
set splitbelow splitright

"remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"enable autocompletion
set wildmode =longest,list,full

"go to jumppoint <++>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l

"movement
nnoremap W 5w
nnoremap B 5b
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>

"compensate missing esckey on keyboard and make it more ergonomic at the same time
imap jj <Esc>

"indentation
set shiftwidth=4
set autoindent
set expandtab
set tabstop=4

"autoload .Xresources on save
autocmd BufWritePost *Xresources !xrdb -merge ~/.Xresources

"Update binds when sxhkdrx is updated
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &

map <leader>c :w! \| !comp <c-r>%<CR><CR>
map <leader>o :w! \| !opout <c-r>%<CR><CR>

"python shortcuts
autocmd FileType python inoremap -d def():<Enter><Tab><++><Esc>k0f(i<Space>
autocmd FileType python inoremap -t try:<Enter>except<Space><++>:<Enter><Tab><++><Esc>kO<Tab>
autocmd FileType python inoremap -p print()<Esc>i
autocmd FileType python inoremap -2 print("")<Esc>hi
autocmd FileType python inoremap -f for :<Enter><Tab><++><Esc>k$i
autocmd FileType python inoremap -i if :<Enter><Tab><++><Esc>k$i

autocmd BufWritePost ~/.local/src/dwm/dwmblocks/blocks.h !cd ~/.local/src/dwm/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
"autocmd BufWritePost *dwm/dwm*/config.h !make -C ~/.local/dwm/dwm* && sudo -S make clean install

"LaTeX stuff /* vim: set filetype=latex : */
autocmd BufWritePost *.tex !latexmk -pdf %
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd FileType tex inoremap -n \documentclass{}<Enter><Enter>\begin{document}<Enter><Enter>\title{<++>}<Enter>\author{<++>}<Enter>\date{<++>}<Enter>\maketitle<Enter><Enter><++><Enter><Enter>\end{document}<Esc>kkkkkkkkkkk0f{a
autocmd FileType tex inoremap -s \section{}<Esc>i
autocmd FileType tex inoremap -y \subsection{}<Esc>i
autocmd FileType tex inoremap -x \subsubsection{}<Esc>i
autocmd FileType tex inoremap -p \paragraph{}<Esc>i
autocmd FileType tex inoremap -l \subparagraph{}<Esc>i
autocmd FileType tex inoremap -i \tableofcontents
autocmd FileType tex inoremap -c \clearpage
autocmd FileType tex inoremap -q ,,''<Esc>hi
autocmd FileType tex inoremap -r \textsubscript{}<Esc>i
autocmd FileType tex inoremap -h \textsuperscript{}<Esc>i
autocmd FileType tex inoremap -e \emph{}<Esc>i
autocmd FileType tex inoremap -c \color{}<Esc>i
autocmd FileType tex inoremap -b \textbf{}<Esc>i
autocmd FileType tex inoremap -i \textit{}<Esc>i

"Plugin stuff

" ------Vim Auto Closetag------
  " filenames like *.xml, *.html, *.xhtml, ...
  " These are the file extensions where this plugin is enabled.
  let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.js,*.tsx'

  " filenames like *.xml, *.xhtml, ...
  " This will make the list of non-closing tags self-closing in the specified files.
  let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.jsx,*.js,*.tsx'

  " filetypes like xml, html, xhtml, ...
  " These are the file types where this plugin is enabled.
  let g:closetag_filetypes = 'html,xhtml,jsx,js,tsx'

  " filetypes like xml, xhtml, ...
  " This will make the list of non-closing tags self-closing in the specified files.
  let g:closetag_xhtml_filetypes = 'xml,xhtml,jsx,js,tsx'

  " integer value [0|1]
  " This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
  let g:closetag_emptyTags_caseSensitive = 1

  " Disables auto-close if not in a "valid" region (based on filetype)
  let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }

  " Shortcut for closing tags, default is '>'
  let g:closetag_shortcut = '>'

  " Add > at current position without closing the current tag, default is ''
  let g:closetag_close_shortcut = '<leader>>'

" ------COC SETTINGS------
  " prettier command for coc
  command! -nargs=0 Prettier :CocCommand prettier.formatFile
  let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-prettier',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-angular',
    \ 'coc-vimtex'
    \ ]

  " From Coc Readme
  set updatetime=300

  " Some servers have issues with backup files, see #649
  set nobackup
  set nowritebackup

  " don't give |ins-completion-menu| messages.
  set shortmess+=c

  " always show signcolumns
  set signcolumn=yes

  " Use tab for trigger completion with characters ahead and navigate.
  " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
  " Coc only does snippet and additional edit on confirm.
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  " Or use `complete_info` if your vim support it, like:
  " inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

  " Use `[g` and `]g` to navigate diagnostics
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

  " Remap for rename current word
  nmap <rn> <Plug>(coc-rename)

  " Remap for format selected region
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)

  " Remap for do codeAction of current line
  nmap <leader>ac  <Plug>(coc-codeaction)
  " Fix autofix problem of current line
  nmap <leader>qf  <Plug>(coc-fix-current)

  " Create mappings for function text object, requires document symbols feature of languageserver.
  xmap if <Plug>(coc-funcobj-i)
  xmap af <Plug>(coc-funcobj-a)
  omap if <Plug>(coc-funcobj-i)
  omap af <Plug>(coc-funcobj-a)

  " Use `:Format` to format current buffer
  command! -nargs=0 Format :call CocAction('format')

  " Use `:Fold` to fold current buffer
  command! -nargs=? Fold :call     CocAction('fold', <f-args>)

  " use `:OR` for organize import of current buffer
  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

  " Add status line support, for integration with other plugin, checkout `:h coc-status`
  set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
endif
