return require'packer'.startup(function()
    use('wbthomason/packer.nvim')

    -- LSP --
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use('neovim/nvim-lspconfig')
    -- use 'williamboman/nvim-lsp-installer'
    use("hrsh7th/nvim-cmp") -- Autocompletion plugin
    use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
    use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
    use("L3MON4D3/LuaSnip") -- Snippets plugin
    use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...
    use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
    -- NVIM TREE --
    use("kyazdani42/nvim-tree.lua")
    use("kyazdani42/nvim-web-devicons")
    use("onsails/lspkind-nvim")

    use("rcarriga/nvim-notify")

    -- TREESITTER --
    use("nvim-treesitter/nvim-treesitter", {"do", ":TSUpdate"}) --> treesitter
    use("nvim-treesitter/nvim-treesitter-textobjects") --> textobjects
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("p00f/nvim-ts-rainbow")
	use("nvim-treesitter/playground")
	use("JoosepAlviste/nvim-ts-context-commentstring")

    use {
        "nvim-telescope/telescope.nvim",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use("nvim-lualine/lualine.nvim") -- statusline at bottom of nvim
    use("romgrk/barbar.nvim") -- buffers/tabs
    use("windwp/nvim-autopairs") -- completion of pair symbols syntax
    use("fladson/vim-kitty")

    use("norcalli/nvim-colorizer.lua") -- colourize hex and rgb code
    use("karb94/neoscroll.nvim") -- smooth scrolling
    use("sunjon/shade.nvim") -- dims inactive window that is not in use when editing files
    -- GIT --
    use("lewis6991/gitsigns.nvim") -- display lines that have been added, deleted and changed
    use("f-person/git-blame.nvim") -- display on line last commit, who did it and when

    -- MISC --
    -- use 'kwakzalver/duckytype.nvim'
    -- use { 'mhinz/vim-startify' }                       -- start screen
    -- use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump

    -- Colour Scheme
    use("Mofiqul/dracula.nvim")
end)

