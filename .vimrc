"==============================================================================
"
"	  ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"	  ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"	  ██║   ██║██║██╔████╔██║██████╔╝██║     
"	  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"	██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"	╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"==============================================================================
" ~~ BASICS ~~
"==============================================================================
" LINE NUMBERS
set number
" SYNTAX
syntax on
" MOUSE MODE
set mouse=v
" CONTROL-C CONTROL-V SUPPORT
source $VIMRUNTIME/mswin.vim
behave mswin
" ENCODING SETTINGS
set encoding=utf-8
" NO LINE BREAKS IN WORDS
set linebreak
" CURSOR ALWAYS VISIBLE
set ruler
" STATUS BAR
set laststatus=2
"==============================================================================
" ~~ ADVANCED ~~
"==============================================================================
" COMMAND-LINE COMPLETION
set wildmenu
" UNDO LIMIT
set history=1000
" EXIT CONFIRM DIALOG (INSTEAD OF FAILING A COMMAND)
set confirm
" DISABLE Vi COMPATIBILITY
set nocompatible
" DISABLE BACKUP FILES GENERATION (~ - files)
set nobackup
" GLOBAL CLIPBOARD THINGY
set clipboard=unnamedplus
set paste 
