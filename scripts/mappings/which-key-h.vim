" ––– Vim Clap Commands –––

" Vim Clap commands
let g:which_key_map['h'] = {
      \ 'name':'+VimClap'             ,
      \ '/': [ ':Clap search_history' , 'Search History'           ] ,
      \ 'b': [ ':Clap buffers'        , 'Buffers'                  ] ,
      \ 'B': [ ':Clap marks'          , 'Bookmarks'                ] ,
      \ 'c': [ ':Clap bcommits'       , 'Current Buffer''s Commits'] ,
      \ 'C': [ ':Clap bcommits'       , 'All Commits'              ] ,
      \ 'e': [ ':Clap registers'      , 'Registers'                ] ,
      \ 'f': [ ':Clap filer'          , 'File Explorer'            ] ,
      \ 'F': [ ':Clap files'          , 'Files'                    ] ,
      \ 'g': [ ':Clap gfiles'         , 'Git Files'                ] ,
      \ 'G': [ ':Clap git_diff_files' , 'Edited Git Files'         ] ,
      \ 'h': [ ':Clap help_tags'      , 'Help Tags'                ] ,
      \ 'l': [ ':Clap blines'         , 'Current Buffer''s Lines'  ] ,
      \ 'L': [ ':Clap lines'          , 'All Lines'                ] ,
      \ 'm': [ ':Clap command'        , 'Vim Commands'             ] ,
      \ 'M': [ ':Clap command_history', 'Vim Command History'      ] ,
      \ 'o': [ ':Clap loclist'        , 'Location List'            ] ,
      \ 'O': [ ':Clap proj_tags'      , 'Project Tags'             ] ,
      \ 'p': [ ':Clap providers'      , 'All Vim Clap Providers'   ] ,
      \ 'P': [ ':Clap maps'           , 'Key Mappings'             ] ,
      \ 'q': [ ':Clap quickfix'       , 'Quickfix Errors'          ] ,
      \ 'r': [ ':Clap grep'           , 'Ripgrep'                  ] ,
      \ 'R': [ ':Clap grep2'          , 'Ripgrep With Caching'     ] ,
      \ 's': [ ':Clap colors'         , 'Colorschemes'             ] ,
      \ 'S': [ ':Clap search_history' , 'Search History'           ] ,
      \ 't': [ ':Clap filetypes'      , 'Filetypes'                ] ,
      \ 'T': [ ':Clap tags'           , 'vista.vim Tags'           ] ,
      \ 'w': [ ':Clap windows'        , 'Windows'                  ] ,
      \ 'y': [ ':Clap history'        , 'File History'             ] ,
      \ 'Y': [ ':Clap yanks'          , 'Yanks'                    ]
      \ }
