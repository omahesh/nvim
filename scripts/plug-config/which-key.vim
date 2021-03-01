" Map leader to which_key
nnoremap <LEADER> :silent WhichKey '<SPACE>'<CR>
vnoremap <LEADER> :silent<C-u> :silent WhichKeyVisual '<SPACE>'<CR>
nnoremap m :silent WhichKey 'm'<CR>
vnoremap m :silent<C-u> :silent WhichKeyVisual 'm'<CR>

" Create maps to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
" Reload map every time popup opens
let g:which_key_run_map_on_popup = 1
" Minimum horizontal space between columns
let g:which_key_hspace = 3
" Time until the menu appears
set timeoutlen=250

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd FileType which_key set laststatus=0 noshowmode noruler
autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Top level mappings
let g:which_key_map = {
      \ '.': [ ':tabe $MYVIMRC'                   , 'Open $MYVIMRC'               ] ,
      \ '/': [ ':Commentary'                      , 'Toggle Comment'              ] ,
      \ ']': [ '<C-]>'                            , 'Jump To Section In Help File'] ,
      \ 'a':'Append Character'                    ,
      \ 'c': [ ':Commentary'                      , 'Toggle Comment'              ] ,
      \ 'C': {
      \    'name':'+COC'                          ,
      \    'm': [ ':CocList marketplace'          , 'COC Marketplace'             ] ,
      \    's': [ ':CocList snippets'             , 'COC Snippets'                ] ,
      \    'c': [ ':CocList commands'             , 'COC Commands'                ]
      \ }                                         ,
      \ 'd': [ ':q | bdelete'                     , 'Quit Buffer'                 ] ,
      \ 'D': [ ':call delete(expand("%"))'                , 'Delete Current File'         ] ,
      \ 'f': [ ':Autoformat'                      , 'Format Buffer'               ] ,
      \ 'F': {
      \    'name' : '+find & replace'             ,
      \    'b' : [':Farr --source=vimgrep'        , 'In Current Buffer'           ] ,
      \    'p' : [':Farr --source=rgnvim'         , 'In Current Project'          ] ,
      \ }                                         ,
      \ 'g':'+Git'                                ,
      \ 'i':'Insert Character'                    ,
      \ 'm': [ ':MRU'                             , 'File History (MRU)'          ] ,
      \ 'n': [ ':set relativenumber!'             , 'Toggle Hybrid Line Numbers'  ] ,
      \ 'N': [ ':set number!'                     , 'Toggle Line Numbers'         ] ,
      \ 'o':'+Other'                              ,
      \ 'p':'+Plug'                               ,
      \ 'q': [ ':q | bdelete'                     , 'Quit Buffer'                 ] ,
      \ 'Q': [ ':qa'                              , 'Quit All Buffers'            ] ,
      \ 'r':'Run File'                            ,
      \ 'R': [ ':RnvimrToggle'                    , 'Open Vim Ranger'             ] ,
      \ 's':'+Search'                             ,
      \ 't':'+Tabs'                               ,
      \ 'T': [ ':NERDTreeToggle'                  , 'File Tree'                   ] ,
      \ 'w': [ ':Autoformat | w'                  , 'Save File'                   ] ,
      \ 'W': [ ':wa'                              , 'Save All Buffers'            ] ,
      \ 'z': [ ':Goyo | set number relativenumber', 'Zen Mode (Goyo)'             ]
      \ }

" Git commands
let g:which_key_map['g'] = {
      \ 'name':'+Git'    ,
      \ 'l': [ ':LazyGit', 'Open Lazy Git']
      \ }

" Other commands
let g:which_key_map['o'] = {
      \ 'name':'+Other'                       ,
      \ 'a': '(Live) Easy Align'              ,
      \ 'A': 'Format Vim Which Key Dictionary',
      \ 'd': [ ':qa'                          , 'Quit All Buffers'             ] ,
      \ 'o': [ '<C-w>gf'                      , 'Open File In New Tab'         ] ,
      \ 'q': [ ':q! | bdelete!'               , 'Force Quit Buffer'            ] ,
      \ 'Q': [ ':qa!'                         , 'Force Quit All Buffers'       ] ,
      \ 'r': 'Search And Replace'             ,
      \ 's': [ ':source $MYVIMRC'             , 'Reload MYVIMRC'               ] ,
      \ 'S': '+Startify'                      ,
      \ 't': [ ':TagbarToggle'                , 'Toggle Tagbar'                ] ,
      \ 'T': [ ':set termguicolors!'          , 'Toggle "termguicolors" Option'] ,
      \ 'w':'+Windows'
      \ }

" Window commands
let g:which_key_map['o']['S'] = {
      \ 'name':'+Startify',
      \ 'l': [ ':SLoad'   , 'Load Session'  ] ,
      \ 's': [ ':SSave'   , 'Save Session'  ] ,
      \ 'd': [ ':SDelete' , 'Delete Session'] ,
      \ 'c': [ ':SClose'  , 'Close Session' ]
      \ }

" Window commands
let g:which_key_map['o']['w'] = {
      \ 'name':'+Windows',
      \ '=': [ '<C-w>='  , 'Equalize Window Height'] ,
      \ 'b': [ ':split'  , 'Duplicate Below'       ] ,
      \ 'h': [ '<C-w>h'  , 'Go Left A Window'      ] ,
      \ 'j': [ '<C-w>j'  , 'Go Down A Window'      ] ,
      \ 'k': [ '<C-w>k'  , 'Go Up A Window'        ] ,
      \ 'l': [ '<C-w>l'  , 'Go Right A Window'     ] ,
      \ 'o': [ '<C-w>+'  , 'Increase Height (+2)'  ] ,
      \ 'r': [ ':vsplit' , 'Duplicate Right'       ] ,
      \ 's': [ ':Windows', 'Search Windows'        ] ,
      \ 't': [ '<C-w>T'  , 'Open Windows In Tabs'  ] ,
      \ 'u': [ '<C-w>-'  , 'Decrease Height (-2)'  ]
      \ }

" Vim Plug commands
let g:which_key_map['p'] = {
      \ 'name':'+VimPlug'     ,
      \ 'c': [ ':PlugClean'   , 'Remove Unlisted Plugins'        ] ,
      \ 'd': [ ':PlugDiff'    , 'Show Changes'                   ] ,
      \ 'i': [ ':PlugInstall' , 'Install Plugins'                ] ,
      \ 'u': [ ':PlugUpdate'  , 'Install + Update Plugins'       ] ,
      \ 's': [ ':PlugStatus'  , 'Plugin Statuses'                ] ,
      \ 'S': [ ':PlugSnapshot', 'Make Script For Current Plugins']
      \ }

" Search commands
let g:which_key_map['s'] = {
      \ 'name':'+Search'   ,
      \ 'a': [ ':Ag'       , 'Silver Searcher (Ag)'        ] ,
      \ 'b': [ ':Buffers'  , 'Buffers'                     ] ,
      \ 'c': [ ':Colors'   , 'Color Schemes'               ] ,
      \ 'C': [ ':Commits'  , 'Commit History'              ] ,
      \ 'f': [ ':GFiles'   , 'Search Files'                ] ,
      \ 'F': [ ':Filetypes', 'Filetype Syntax Highlighting'] ,
      \ 'h': [ ':History'  , 'File History'                ] ,
      \ 'H': [ ':History:' , 'Command History'             ] ,
      \ 'l': [ ':BLines'   , 'Search Lines'                ] ,
      \ 'm': [ ':Maps'     , 'Key Mappings'                ] ,
      \ 's': [ ':Snippets' , 'Snippets'                    ] ,
      \ 'r': [ ':Rg'       , 'Search Files By Text (Rg)'   ] ,
      \ 't': [ ':BTags'    , 'Search Tags'                 ] ,
      \ 'w': [ ':Windows'  , 'Search Windows'              ]
      \ }

" Tab commands
let g:which_key_map['t'] = {
      \ 'name':'+Tabs'         ,
      \ '.': [ ':tabe $MYVIMRC', 'Open $MYVIMRC'     ] ,
      \ 'd': [ ':tabe %'       , 'Duplicate Tab'     ] ,
      \ 'h': [ ':tabm -1'      , 'Move Tab Left'     ] ,
      \ 'l': [ ':tabm +1'      , 'Move Tab Right'    ] ,
      \ 'n': [ ':tabnext'      , 'Go To Next Tab'    ] ,
      \ 'p': [ ':tabnext'      , 'Go To Previous Tab'] ,
      \ 't': [ ':tabe #'       , 'Open Last Tab'     ]
      \ }


" Register which key map
autocmd! User vim-which-key call which_key#register('<SPACE>', "g:which_key_map")
