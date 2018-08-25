set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

call plug#begin('~/.local/share/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'
call plug#end()

" Set color scheme
syntax on
color dracula

" Sync vim clipboard to desktop
set cb=unnamedplus

" Faster grep using pt
set grepprg=pt\ --nogroup\ --nocolor

" CTRLP config
let g:ctrlp_user_command = 'pt %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" NERDTREE config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

" Lightline configuration
let g:lightline = {
      \ 'colorscheme': 'Dracula',
      \ }

" vim-markdown-preview
let vim_markdown_preview_github=1

" vim-go config
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
