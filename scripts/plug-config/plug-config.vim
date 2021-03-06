"   _____             __ _
"  / ____|           / _(_)
" | |     ___  _ __ | |_ _  __ _
" | |    / _ \| '_ \|  _| |/ _` |
" | |___| (_) | | | | | | | (_| |
"  \_____\___/|_| |_|_| |_|\__, |
"                           __/ |
"                          |___/

" ––– NERD Commenter –––
let g:nerdspacedelims = 10 " Add spaces after comment chars
let g:nerdtrimtrailingwhitespace = 1 " Trim trailing whitespace when uncommenting

" ––– Floaterm –––
source ~/.config/nvim/scripts/plug-config/floaterm.vim

" ––– Lazy Git –––
let g:lazygit_floating_window_winblend = 0 " Floating window transparency
let g:lazygit_floating_window_scaling_factor = 0.9 " Scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " Floating window corner characters
let g:lazygit_use_neovim_remote = 1 " Fallback to 0 if neovim-remote is not installed

" ––– FZF –––
source ~/.config/nvim/scripts/plug-config/fzf.vim

" ––– Quickscope –––
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T'] " Keys that trigger highlight
let g:qs_max_chars=150

" ––– Indent Line –––
let g:indentLine_char = '│' " Line character

" ––– Startify –––
source ~/.config/nvim/scripts/plug-config/startify.vim

" ––– Rainbow Parenthesis –––
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses

" ––– NERD Tree –––
let NERDTreeQuitOnOpen=0 " Close NERD Tree after opening a file
let NERDTreeShowBookmarks=1 " Show NERD Tree bookmarks

" ––– FAR –––
source ~/.config/nvim/scripts/plug-config/far.vim

" ––– Autoformat –––
autocmd FileType snippets let b:autoformat_autoindent=0

" ––– Vim Sneak –––
source ~/.config/nvim/scripts/plug-config/sneak.vim

" ––– Vim Clap –––
let g:clap_open_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }

" ––– Vim LSP Kind –––
luafile ~/.config/nvim/scripts/plug-config/lsp/lsp-kind.lua

" ––– COC Snippets –––
source ~/.config/nvim/scripts/plug-config/snippets/coc-snippets.vim
" source ~/.config/nvim/scripts/plug-config/snippets/nvim-snippets.vim

" ––– LSP Saga –––
luafile ~/.config/nvim/scripts/plug-config/lsp/lsp-saga.lua

" ––– Codi –––
" source ~/.config/nvim/scripts/plug-config/codi.vim

" ––– Markdown Preview –––
let g:mkdp_browser = 'firefox'

" ––– Galaxyline –––
luafile ~/.config/nvim/scripts/plug-config/galaxyline.lua

" ––– Vim Signify –––
let g:signify_sign_add = '+'
let g:signify_sign_delete = '-'
let g:signify_sign_change = '~'
