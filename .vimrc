set nocompatible     " Vim behavior, not Vi.
set encoding=utf-8   " Use UTF-8 encoding
set nobackup         " Don't backup
set nowritebackup    " Write file in place
set noswapfile       " Don't use swap files (.swp)
set autoread         " Autoreload buffers
set autowrite        " Automatically save changes before switching buffers
syntax enable        " Enable syntax highlight

" History, Cursor, Rulers
set history=50                                                               " Just remember last 50 commands
set laststatus=2                                                             " Always display the status line
set ruler                                                                    " Show the cursor position all the time
set number                                                                   " Show line numbers
set showcmd                                                                  " Display incomplete commands
set cursorline                                                               " Highlight current cursor line
set shell=$SHELL                                                             " Default shell is ZSH
set statusline=%<%f\ %h%m%r%=\ %{devnotes#statusline()}\ %-14.(%l,%c%V%)\ %P " Status line format

" Tabs and white spaces
set nowrap                        " Don't wrap lines
set tabstop=2                     " Tabs are always 2 spaces
set expandtab                     " Expand tabs into spaces
set shiftwidth=2                  " Reindent with 2 spaces (using <<)
set list                          " Show invisible chars
set listchars=""                  " Reset listchars
set list listchars=tab:»·,trail:· " Set listchars for tabs and trailing spaces

" Apparence
colorscheme Tomorrow-Night   "  Tomorrow Night is the theme of choice
