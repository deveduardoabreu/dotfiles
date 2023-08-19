" ~/.config/nvim/plugins.vim
"
" @author Eduardo Rodrigues de Abreu
" @email dev.eduardo.abreu@gmail.com

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

if has('nvim')
	call plug#begin('~/.config/nvim/bundle')
else
	call plug#begin('~/.vim/bundle')
endif

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-characterize'

Plug 'andymass/vim-matchup'
Plug 'sheerun/vim-polyglot'

Plug 'editorconfig/editorconfig-vim'

Plug 'justinmk/vim-sneak'

Plug 'airblade/vim-rooter'

Plug 'machakann/vim-highlightedyank'

Plug 'airblade/vim-gitgutter'

Plug 'itchyny/lightline.vim'

Plug 'haishanh/night-owl.vim'

Plug 'preservim/nerdtree', {'On': ['NERDTreeToggle', 'modified'] }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

Plug 'junegunn/vim-easy-align'

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'hrsh7th/cmp-buffer'

Plug 'hrsh7th/cmp-path'

Plug 'hrsh7th/nvim-cmp'

Plug 'ray-x/lsp_signature.nvim'

Plug 'hrsh7th/cmp-vsnip'

Plug 'hrsh7th/vim-vsnip'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
