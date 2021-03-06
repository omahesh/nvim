" ––– Other Commands –––
" Start Live Easy Align with oa in visual and normal mode
nmap <LEADER>oa :LiveEasyAlign<CR>
xmap <LEADER>oa :LiveEasyAlign<CR>
" Format which-key.vim dictionary
nmap <LEADER>oA vi{:EasyAlign*/[,\]]/l0is<CR>
" Search and replace
function SearchAndReplace()
  echohl ClapMatches5
  let l:search = input("Search Regular Expression: ")
  echohl ClapFuzzyMatches
  let l:replace = input("Replace With: ")
  execute '%s/' . l:search . '/' . l:replace . '/gc'
endfunction
nnoremap <LEADER>or :call SearchAndReplace()<CR>

let g:which_key_map['o'] = {
      \ 'name':'+Other'                       ,
      \ 'a': '(Live) Easy Align'              ,
      \ 'A': 'Format Vim Which Key Dictionary',
      \ 'c': '+COC'                           ,
      \ 'd': [ ':qa'                          , 'Quit All Buffers'             ] ,
      \ 'D': [ ':qa!'                         , 'Force Quit All Buffers'       ] ,
      \ 'o': [ '<C-w>gf'                      , 'Open File In New Tab'         ] ,
      \ 'q': [ ':qa'                          , 'Quit All Buffers'             ] ,
      \ 'Q': [ ':qa!'                         , 'Force Quit All Buffers'       ] ,
      \ 'r': 'Search And Replace'             ,
      \ 's': [ ':source $MYVIMRC'             , 'Reload MYVIMRC'               ] ,
      \ 'S': '+Startify'                      ,
      \ 't': [ ':TagbarToggle'                , 'Toggle Tagbar'                ] ,
      \ 'T': [ ':set termguicolors!'          , 'Toggle "termguicolors" Option'] ,
      \ 'w':'+Windows'
      \ }

" ––– COC Commands –––
let g:which_key_map['o']['c'] = {
      \ 'name':'+COC'                                  ,
      \ 'm': [ ':CocList marketplace'                  , 'Open COC Marketplace' ] ,
      \ 's': [ ':CocCommand snippets.openSnippetFiles' , 'Go To Snippets File'  ] ,
      \ 'S': [ ':CocList snippets'                     , 'List Snippets'        ] ,
      \ 'c': [ ':tabe ~/.config/nvim/coc-settings.json', 'Go To COC Config File'] ,
      \ 'r': [ ':CocList commands'                     , 'List COC Commands'    ]
      \ }

" ––– Startify Commands –––
nnoremap <LEADER>oSd :SDelete<CR>
let g:which_key_map['o']['S'] = {
      \ 'name':'+Startify'   ,
      \ 'c': [ ':SClose'     , 'Close Session'] ,
      \ 'd': 'Delete Session',
      \ 'l': [ ':SLoad'      , 'Load Session' ] ,
      \ 'o': [ ':Startify'   , 'Open Startify'] ,
      \ 's': [ ':SSave'      , 'Save Session' ]
      \ }

" ––– Window Commands –––
let g:which_key_map['o']['w'] = {
      \ 'name':'+Windows',
      \ '=': [ '<C-w>='  , 'Equalize Window Height'] ,
      \ 'b': [ ':split'  , 'Duplicate Below'       ] ,
      \ 'h': [ '<C-w>h'  , 'Go Left A Window'      ] ,
      \ 'H': [ '<C-w>H'  , 'Move Window Left'      ] ,
      \ 'j': [ '<C-w>j'  , 'Go Down A Window'      ] ,
      \ 'J': [ '<C-w>J'  , 'Move Window Down'      ] ,
      \ 'k': [ '<C-w>k'  , 'Go Up A Window'        ] ,
      \ 'K': [ '<C-w>K'  , 'Move Window Up'        ] ,
      \ 'l': [ '<C-w>l'  , 'Go Right A Window'     ] ,
      \ 'L': [ '<C-w>L'  , 'Move Window Right'     ] ,
      \ 'o': [ '<C-w>+'  , 'Increase Height (+2)'  ] ,
      \ 'r': [ ':vsplit' , 'Duplicate Right'       ] ,
      \ 's': [ ':Windows', 'Search Windows'        ] ,
      \ 't': [ '<C-w>T'  , 'Open Windows In Tabs'  ] ,
      \ 'u': [ '<C-w>-'  , 'Decrease Height (-2)'  ]
      \ }
