local use = require('packer').use
require('packer').startup(function()
    use {
    "lewis6991/hover.nvim",
    config = function()
        require("hover").setup {
            init = function()
                -- Require providers
                require("hover.providers.lsp")
                -- require('hover.providers.gh')
                -- require('hover.providers.gh_user')
                -- require('hover.providers.jira')
                -- require('hover.providers.man')
                -- require('hover.providers.dictionary')
            end,
            preview_opts = {
                border = nil
            },
            -- Whether the contents of a currently open hover window should be moved
            -- to a :h preview-window when pressing the hover keymap.
            preview_window = false,
            title = true
        }

        -- Setup keymaps
        vim.keymap.set("n", "K", require("hover").hover, {desc = "hover.nvim"})
        vim.keymap.set("n", "gK", require("hover").hover_select, {desc = "hover.nvim (select)"})
    end
}
    use 'wbthomason/packer.nvim'
    use 's1n7ax/nvim-window-picker'
use {
    'nvim-neo-tree/neo-tree.nvim',
        branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
    }
    use 'folke/trouble.nvim'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'maan2003/lsp_lines.nvim'
    use 'vimwiki/vimwiki'   -- ------ Marckdown
    use 'folke/tokyonight.nvim'   -- Tema
    use 'MunifTanjim/nui.nvim'
    use 'junegunn/goyo.vim'
    use 'kyazdani42/nvim-web-devicons'   --- Iconos 
    use 'ryanoasis/vim-devicons'  --- Iconos
    use 'nvim-lua/plenary.nvim'   ------ lua
    use 'nvim-telescope/telescope.nvim'   -------- telescope 
    use 'jiangmiao/auto-pairs'   --------- Autoclose brackets
    use 'christoomey/vim-tmux-navigator'  --- navegavión
    use 'tamton-aquib/staline.nvim'  ---- 
    use 'xuhdev/vim-latex-live-preview'  --, { 'for': 'tex' }  --vim latex preview
    use 'tomtom/tcomment_vim' -- -----Comentarios
    use {'rrethy/vim-hexokinase', run = 'make hexokinase' } -- colores
    use 'sbdchd/neoformat'
    use 'bfrg/vim-cpp-modern' -- Syntaxis de c++
    use 'mattn/emmet-vim'
    use 'yggdroot/indentline' -- lineas de identación 
    use 'turbio/bracey.vim'--  , {'do': 'npm install --prefix server'} -- live server html, css, javascript
    use 'OmniSharp/omnisharp-vim' -- C#
    use 'junegunn/fzf.vim'
    use 'voldikss/vim-floaterm'
    -- Lsp
    use 'neovim/nvim-lspconfig'
    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind.nvim'
    -- Vim snip para lsp texlab (latex)
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'lervag/vimtex'
    use 'nanozuki/tabby.nvim'
    use 'folke/zen-mode.nvim'
    use 'junegunn/limelight.vim'
    use 'baskerville/vim-sxhkdrc'
    -- install without yarn or npm
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})
end)

--Plugins

--[[
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')
    --Plug 'ziontee113/neo-minimap'
    Plug 's1n7ax/nvim-window-picker'
    Plug 'nvim-neo-tree/neo-tree.nvim'
    Plug 'folke/trouble.nvim'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'maan2003/lsp_lines.nvim'
    Plug 'lunarvim/horizon.nvim'
    Plug 'voldikss/vim-floaterm'
    Plug 'junegunn/goyo.vim'
    Plug 'navarasu/onedark.nvim'
    Plug 'sainnhe/sonokai'
    Plug 'sainnhe/edge'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'mhartington/oceanic-next'
    Plug 'rakr/vim-one'
    Plug 'jacoborus/tender.vim'
    Plug 'chriskempson/base16-vim' 
    Plug 'gosukiwi/vim-atom-dark'
	Plug 'vimwiki/vimwiki'  -- -------- Marck['do']wn
    Plug 'mattn/calendar-vim' -- ------ Calendar
	Plug 'morhetz/gruvbox'  -- -------- Tema
    Plug('folke/tokyonight.nvim', { branch = 'main' })  -- -- Tema
    Plug 'preservim/nerdtree'  -- ----- Árbol de archivos
    -- Plug 'nvim-neo-tree/neo-tree.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'MunifTanjim/nui.nvim'
    -- Plug 'frazrepo/vim-rainbow'  -- --- Coloreo de parentesis, corchetes, etc.
    Plug 'kyazdani42/nvim-web-devicons'  -- --- Iconos 
    Plug 'ryanoasis/vim-devicons' -- --- Iconos
--    Plug 'tribela/vim-transparent'  -- ----- transparencia
--    Plug 'xiyaowong/nvim-transparent'  -- --- transparencia
    Plug 'nvim-lua/plenary.nvim'  -- ------ lua
    Plug 'nvim-telescope/telescope.nvim'  -- -------- telescope 
    -- Plug 'neoclide/coc.nvim', {'branch': 'release'}  -- --- Autocompleta['do'] 
    Plug 'jiangmiao/auto-pairs'  -- --------- Autoclose brackets
--    Plug 'datwaft/bubbly.nvim'  -- satatusline
--    Plug 'beauwilliams/statusline.lua'    
--    Plug 'tamton-aquib/staline.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'christoomey/vim-tmux-navigator' -- --- navegavión
    Plug 'tamton-aquib/staline.nvim' -- ---- 
    Plug('xuhdev/vim-latex-live-preview', { ['for']= 'tex' }) -- vim latex preview
--    Plug 'tpope/vim-commentary' -- - ---- Comentarios
    Plug 'tomtom/tcomment_vim' -- -----Comentarios
--    Plug 'norcalli/nvim-colorizer.lua' -- -----colores en html,rgb, dfsdfsasdfg
    Plug ('rrethy/vim-hexokinase', { ['do']= 'make hexokinase' }) -- colores
    Plug 'sbdchd/neoformat'
    Plug 'bfrg/vim-cpp-modern' -- Syntaxis de c++
    Plug 'mattn/emmet-vim'
    Plug 'yggdroot/indentline' -- lineas de identación 
    Plug('turbio/bracey.vim', {['do'] = 'npm install --prefix server'}) -- live server html, css, javascript
    Plug 'OmniSharp/omnisharp-vim' -- C#
    -- Plug 'dense-analysis/ale'
    Plug 'junegunn/fzf.vim'
    -- Plug 'nickspoons/vim-sharpenup'
    Plug 'nanozuki/tabby.nvim'
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- highlight

    -- Lsp
    Plug 'neovim/nvim-lspconfig'
    -- Completion
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'onsails/lspkind.nvim'
    -- Vim snip para lsp texlab (latex)
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'lervag/vimtex'

vim.call('plug#end')

--]]
