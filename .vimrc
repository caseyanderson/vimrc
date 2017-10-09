" .vimrc for Casey Anderson

set shell=/bin/bash

filetype plugin indent on	" Automatically detect file types.
syntax on									" Syntax highlighting

set history=1000                    " Store a ton of history (default is 20)
set nospell                           " Spell checking on

set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
set term=xterm-256color

" Bundles {
	set nocompatible              " be iMproved, required
	filetype off                  " required

	" set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	Plugin 'bling/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'tpope/vim-surround'

	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required
" }


" Vim UI {
	set background=dark			" Assume a dark background
	colorscheme zenburn				  " Zenburn from https://github.com/jnurmine/Zenburn
	set showmode				" Display the current mode
	set cursorline                  " Highlight current line
	set ruler                   " Show the ruler
	set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
	set showcmd                 " Show partial commands in status line and


	set number						" show line numbers
	set wildmenu				  " visual autocomplete for command menu

" }


" Formatting {

	set autoindent					" Indent at the same level of the previous line
	set tabstop=4					" number of visual spaces per TAB
	set softtabstop=4			" number of spaces in tab when editing
	set expandtab					" tabs are spaces

" }

" airline {

	set laststatus=2
	let g:airline_powerline_fonts = 1

	let g:airline_theme = 'lucius'

	if !exists('g:airline_powerline_fonts')
		" Use the default set of separators with a few customizations
		let g:airline_left_sep='›'  " Slightly fancier than '>'
		let g:airline_right_sep='‹' " Slightly fancier than '<'
	endif


	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif

	" unicode symbols
	let g:airline_left_sep = '»'
	let g:airline_left_sep = '▶'
	let g:airline_right_sep = '«'
	let g:airline_right_sep = '◀'
	let g:airline_symbols.linenr = '␊'
	let g:airline_symbols.linenr = '␤'
	let g:airline_symbols.linenr = '¶'
	let g:airline_symbols.branch = '⎇'
	let g:airline_symbols.paste = 'ρ'
	let g:airline_symbols.paste = 'Þ'
	let g:airline_symbols.paste = '∥'
	let g:airline_symbols.whitespace = 'Ξ'

" }
