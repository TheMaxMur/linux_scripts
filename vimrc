" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

set rtp+=/etc/vim/bundle/Vundle.vim

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


"Plugins and settings
set number
syntax on

call vundle#begin('/etc/vim/bundle')

Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()

"Mappings 

map <C-n> :NERDTreeToggle<CR>
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
	let t:curwin = winnr()
	exec "wincmd ".a:key
	if (t:curwin == winnr())
		if (match(a:key, '[jk]'))
			wincmd v
		else
			wincmd s
		endif
	exec "wincmd ".a:key
	endif
endfunction
