
 set nocompatible
 filetype off                   " required!

 
 
 
"{{{ Unsorted Settings
 syntax enable " enables syntax
 filetype plugin on " sets plugins to work 
 filetype indent on " sets indentation to work
 set showcmd

 call pathogen#infect() " sets up pathogen
 call pathogen#helptags() " generates helptags if needed
	" sets powerline
 let g:Powerline_symbols = 'fancy'
 set nu " sets line numbers

 set autoread "turns on autorevert mode

 set backspace=eol,start,indent "sets up some cross-line stuff -- h moves over
				" line-breaks 
 set whichwrap+=,h,l "Show matching the bracket when cursor is over a bracket

 set hlsearch "Highlight the search result(s).
 set incsearch " highlights as you type
 set ignorecase " sets case insensitive search by default.
 set smartcase " smartly search for case
 set showmatch " show matching parens
 

 set visualbell              " don't beep
 set novisualbell            " don't blink 
 set noerrorbells            " no noise please
 
 
 set hidden " prevents warnings when switching buffers
 
 set nobackup " turns off backup files
 set noswapfile " turns off swap file issues 
 
 
 set scrolloff=5             " keep at least 3 lines visible around cursor
 
 
 
 
 "status line stuff
 set laststatus=2 " always show the statusline

 let g:Powerline_symbols = 'fancy' " make the statusline vancy --
								   " which is my way of saying 'very fancy'


 " sets font for powerline  
 " set guifont=Anonymous\ Pro\ for\ Powerline
" set guifont=Source\ Code\ Pro\ ExtraLight\ for\ Powerline\ for\ Powerline:h14
 " sets solarized for the theme, use <F5> to switch
" set t_Co=256                        " force vim to use 256 colors
" let g:solarized_termcolors=256      " use solarized 256 fallback

" colorscheme solarized
 
" set background=light
  

" call togglebg#map("<F5>")

 set lbr " sets break lines at word

 set wildmenu " sets autocomplete for commands 

 set listchars=tab:\|~ " sets character for tabs
 set nolist " displays tabs -- set nolist to get proper word-wrapping

 set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

"}}}


" {{{ Settings for R
""""""""""""""""""""""""""""""""""""""""""""""" 
"                                             " 
"                                             " 
"                                             " 
"                                             "
"                  Settings For R             "
"                                             "
"   key bindings below (under keybindings)    "
"                                             " 
"                                             " 
"                                             " 
"                                             " 
""""""""""""""""""""""""""""""""""""""""""""""" 
 

" sets up some R stuff:

" temp
 let vimrplugin_screenplugin = 0
 let vimrplugin_ca_ck = 0
 let vimrplugin_applescript = 0
 let vimrplugin_vimshell = 1





" let vimrplugin_screenplugin = 1                    "
" let         vimrplugin_tmux = 1                    "
" let vimrplugin_applescript = 1                     "
"

 " let g:ScreenImpl = 'Tmux'
 " let vimrplugin_screenvsplit = 1 " For vertical tmux split
 " let vimrplugin_notmuxconf=0
 " let g:ScreenShellInitialFocus = 'shell'
 " instruct to use your own .screenrc file
  " let g:vimrplugin_noscreenrc = 1
 " " Don't use conque shell if installed
 " let vimrplugin_conqueplugin = 0





"------------------------------------------------------------------------"
"  This is crucial to turn off the substitution of underscore  "
"------------------------------------------------------------------------"



 let vimrplugin_assign = 0

"}}}



" {{{ UltSnips
"""""""""""""""""""""""""""""""""""""""""""
"                 UltSnips                "
"""""""""""""""""""""""""""""""""""""""""""

 let g:UltiSnipsEditSplit="horizontal"
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<tab>"
 let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"}}}
"{{{ Latex Settings
 """""""""""""""""""""""""""""""""""""""""""""" 
 "                                            " 
 "            Latex Settings                  " 
 "                                            " 
 "                                            " 
 """""""""""""""""""""""""""""""""""""""""""""" 




let g:Tex_CompileRule_pdf='latexmk -pdf $*'

"}}}
"{{{ TabMessage
"-------------------------------------------------------------------"
"                    A quick function to capture                    "
"                    the output of an EX command                    "
"                                                                   "
"-------------------------------------------------------------------"

function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)



"}}}

"{{{ Boxquote stuff
   "------------------------------------------------------"
   "                                                      "
   "                    boxquote stuff                    "
   "                                                      "
   "------------------------------------------------------"

  autocmd BufEnter * nmap <D-/> !!boxes -d pound-cmt<CR>
  autocmd BufEnter * vmap <D-/> !boxes -d boxquote-r<CR>
  autocmd BufEnter * nmap <M-/> !!boxes -d pound-cmt -r<CR>
  autocmd BufEnter * vmap <M-/> !boxes -d pound-cmt -r<CR>
  autocmd BufEnter *.html nmap <D-/> !!boxes -d html-cmt<CR>
  autocmd BufEnter *.html vmap <D-/> !boxes -d html-cmt<CR>
  autocmd BufEnter *.html nmap <M-/> !!boxes -d html-cmt -r<CR>
  autocmd BufEnter *.html vmap <M-/> !boxes -d html-cmt -r<CR>
  autocmd BufEnter *.[chly],*.[pc]c nmap <D-/> !!boxes -d c-cmt<CR>
  autocmd BufEnter *.[chly],*.[pc]c vmap <D-/> !boxes -d c-cmt<CR>
  autocmd BufEnter *.[chly],*.[pc]c nmap <M-/> !!boxes -d c-cmt -r<CR>
  autocmd BufEnter *.[chly],*.[pc]c vmap <M-/> !boxes -d c-cmt -r<CR>
  autocmd BufEnter *.C,*.cpp,*.java nmap <D-/> !!boxes -d java-cmt<CR>
  autocmd BufEnter *.C,*.cpp,*.java vmap <D-/> !boxes -d java-cmt<CR>
  autocmd BufEnter *.C,*.cpp,*.java nmap <M-/> !!boxes -d java-cmt -r<CR>
  autocmd BufEnter *.C,*.cpp,*.java vmap <M-/> !boxes -d java-cmt -r<CR>
  autocmd BufEnter .vimrc*,.exrc nmap <D-/> !!boxes -d vim-cmt<CR>
  autocmd BufEnter .vimrc*,.exrc vmap <D-/> !boxes -d boxquote-vim<CR>
  autocmd BufEnter .vimrc*,.exrc nmap <M-/> !!boxes -d vim-cmt -r<CR>
  autocmd BufEnter .vimrc*,.exrc vmap <M-/> !boxes -d boxquote-vim -r<CR>
  autocmd FileType R nmap <D-/> !!boxes -d pound-cmt<CR>
  autocmd FileType R vmap <D-/> !boxes -d boxquote-r<CR>
  autocmd FileType R nmap <M-/> !!boxes -d pound-cmt -r<CR>
  autocmd FileType R vmap <M-/> !boxes -d boxquote-r -r<CR>

  autocmd FileType tex nmap <D-/> !!boxes -d pound-cmt<CR>
  autocmd FileType tex vmap <D-/> !boxes -d boxquote-latex<CR>
  autocmd FileType tex nmap <M-/> !!boxes -d pound-cmt -r<CR>
  autocmd FileType tex vmap <M-/> !boxes -d boxquote-latex -r<CR>

" }}}

"{{{ Session Options
"----------------------------------------------------------------------"
"                    set some basic session options                    "
"----------------------------------------------------------------------"

set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize

"}}}



"{{{ Shift+arrow=Select
"------------------------------------------------------------------------------"
"             This allows you to use shift+arrows to select text.              "
"             handy if only to prevent                                         "
"             inadvertent page shifting. and to and then to this               "
"------------------------------------------------------------------------------"

if has("gui_macvim")
    let macvim_hig_shift_movement = 1
else
	set mouse=a
endif
let g:neocomplcache_enable_at_startup = 1
"}}}





"{{{ Key Bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                          "
"                                                          "
"                                                          "
"                                                          "
"                                                          "
"                  General Key Bindings                    "
"                                                          "
"                                                          "
"                                                          "
"                                                          "
"                                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " iunmap <M-b>
 inoremap <M-b> <C-o>b
 inoremap <M-f> <C-o>e

 inoremap <C-d> <Del>

 " next line sets vim to automatically switch to working dir of current
 " buffer.
 autocmd BufEnter * silent! lcd %:p:h
 
 map! kj <ESC>
 " The next line is commented out because it slows down moving in visual mode
 " by a lot
 " vmap kj <esc> 
 nmap ; :

 " Treat long lines as break lines (useful when moving around in them)
 map j gj
 map k gk
 let mapleader=","           " no one uses / do they?
 
 
 nmap <silent> <leader>ev :e $MYVIMRC<CR>
 "prior line sets <leader> ev to go to vimrc

 nmap <silent> <leader>sv :so $MYVIMRC<CR>
 "prior line sets <leader> sv to source vimrc file

 nmap <M-y> :YRShow<CR>

 " stuff for multi-mark editing
" noremap <C-m> :MultieditAddMark i<CR>
" noremap <C-m>m :Multiedit<CR>

" for movement in insert mode
 inoremap <C-f> <c-o>l
 inoremap <C-b> <C-o>h

 " for movement between windows in insert mode:
 inoremap <C-w><C-j> <esc>:wincmd j<cr>i
 inoremap <C-w><C-l> <esc>:wincmd l<cr>i
 inoremap <C-w><C-h> <esc>:wincmd h<cr>i
 inoremap <C-w><C-k> <esc>:wincmd k<cr>i
 
 
 
 " so that visual mode works right for page-down (and smaller page down):
 vnoremap <C-F> <C-D>
 nnoremap <C-F> <C-D>
 "}}}
