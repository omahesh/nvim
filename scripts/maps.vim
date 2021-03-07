"  __  __                   _
" |  \/  |                 (_)
" | \  / | __ _ _ __  _ __  _ _ __   __ _ ___
" | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
" | |  | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"              | |   | |             __/ |
"              |_|   |_|            |___/

" ––– Key Maps –––

" Set space to the leader key
let mapleader = ' '

" Press 'jk' to go into normal mode
inoremap jk <C-c>

" Option + j or k key to move a line down or up in normal and insert mode
nnoremap ∆ ddp
nnoremap ˚ ddkkp
inoremap ∆ <ESC>ddpi
inoremap ˚ <ESC>ddkkpi

" Option + < or > key to move to beginning or end of line
inoremap ≥ <C-c>A
inoremap ≤ <C-c>I
nnoremap ≥ A<C-c>
nnoremap ≤ I<C-c>

" Press enter in normal mode to create new line
nnoremap <CR> o<ESC>

" Backspace in normal mode to delete previous character
nnoremap <BS> dh

" Space + i to insert a character before the current position in normal mode
nnoremap <LEADER>i i <ESC>r

" Space + a to insert a character after the current position in normal mode
nnoremap <LEADER>a li <ESC>r

" ; (semicolon) to go to the end of the line
nnoremap ; $

" Start Live Easy Align with oa in visual and normal mode
nmap <LEADER>oa <Plug>(LiveEasyAlign)
xmap <LEADER>oa <Plug>(LiveEasyAlign)

" Format which-key.vim dictionary
nmap <LEADER>oA vi{:EasyAlign*/[,\]]/l0is<CR>
xmap <LEADER>oA vi{:EasyAlign*/[,\]]/l0is<CR>

" Search and replace
function SearchAndReplace()
  echohl GruvboxPurpleBold
  let l:search = input("Search Regular Expression: ")
  let l:replace = input("Replace With: ")
  execute '%s/' . l:search . '/' . l:replace . '/gc'
endfunction
nnoremap <LEADER>or :call SearchAndReplace()<CR>

" Go to left tab with "gr" instead of "gT"
nnoremap gr gT

" Copy rest of line with Y (just like D and C)
nnoremap Y y$

" Press e to delete character and enter insert mode
nnoremap e cl


" ––– Run Code –––

" Run C++ code with leader + r
autocmd FileType cpp nnoremap <LEADER>r :Autoformat \| w \| !make -s && cat main.in \| ./output<CR>
autocmd FileType cpp inoremap ® <ESC>:Autoformat \| w \| !make -s && cat main.in \| ./output<CR>

" Save and source .vim files
autocmd FileType vim nnoremap <LEADER>r :Autoformat \| w \| source $MYVIMRC<CR>
autocmd FileType vim inoremap ® <ESC>:Autoformat \| w \| source $MYVIMRC<CR>

" Save, source, and PlugInstall in plugins.vim
autocmd BufEnter plugins.vim nnoremap <SILENT> <LEADER>r :Autoformat \| w \| source $MYVIMRC \| PlugUpdate \| q<CR>
autocmd BufEnter plugins.vim inoremap <SILENT> ® <ESC>:Autoformat \| w \| source $MYVIMRC \| PlugUpdate \| q<CR>


" –– Auto Commands –––

" When Vim is exited
augroup SetCursorOnLeave
  autocmd!
  autocmd VimLeave * set guicursor=a:ver20-blinkwait300-blinkon200-blinkoff150
augroup end

" Source MYVIMRC on enter
augroup SourceMYVIMRC
  autocmd!
  autocmd VimEnter * source $MYVIMRC
augroup END

augroup OnColorSchemeChange
  autocmd!
  autocmd ColorScheme * let g:airline_theme = g:colors_name
augroup END
