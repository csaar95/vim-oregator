" Vim filetype detection file
" Language:         Oregator
" Maintainer:       Christian Saar <oregator@sigmatech.de>
" License:          MIT Copyright (c) 2019 Christian Saar
" Latest Revision:  14.11.2019
" Oregator Version: V3.01.014
" For bugs, patches and license go to https://github.com/csaar95/vim-oregator

au BufRead,BufNewFile *.ry,*.inc,*.dep,*.def,*.del,*.dew set filetype=oregator
