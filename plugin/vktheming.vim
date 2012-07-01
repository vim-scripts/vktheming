""
" File:		vktheming.vim
" Author:	Yang kai
" Version:	0.1
" Description:	Set color for vimwiki_html from your current vim theme. This
"		version is according to vimwiki 2.40
"

" Usage:
" Excute command 'VKtheming'. Recommend you excute this command in 'vim-gui'.
"

if exists("g:loaded_vktheming")
	finish
endif
let g:loaded_vktheming = 1

" Load VKtheming when r/w a wiki file
autocmd BufRead,BufNewFile *.wiki :call vktheming#Load_VKtheming()
