-- a file listing all plugins without special options
return {
  --- " Use the closing alternative of brackets in order not to insert extra spaces
  {
    'kylechui/nvim-surround',
    version = "^3.0.0",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  -- Allows one to seach with * in visual mode
  'nelstrom/vim-visual-star-search',
  -- Find and replace with capital S (Ex: %S/facilit{y,ies}/building{,s}/g)
  'tpope/vim-abolish',
  -- allows me to select text between anything (Ex: cin_ in python)
  'wellle/targets.vim',
  -- Diff 2 files
  'will133/vim-dirdiff',
  -- View undo tree
  'mbbill/undotree',
  -- csv
  'chrisbra/csv.vim',
  -- lsp, formatters
  {
    "mason-org/mason-lspconfig.nvim",
    commit="v2.0.0",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {}, commit="v2.0.0" },
        "neovim/nvim-lspconfig",
    },
  },
  -- icons
  'nvim-tree/nvim-web-devicons',
  -- terraform
  'hashivim/vim-terraform',
  -- Jenkins syntax hilighting
  'martinda/Jenkinsfile-vim-syntax',
  -- Collection of useful functions: input window
  'folke/snacks.nvim',
  opts = {
    input = { }
  },
  -- syntax highlighting for prototxt
  'CowKeyMan/vim-prototxt',
  -- c# LSP with gotodefinition support
  {
    'Hoffs/omnisharp-extended-lsp.nvim',
  },
}
