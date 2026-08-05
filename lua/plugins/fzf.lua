  -- searching for files and contents within files easily
return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  config = function()
    local actions = require "fzf-lua.actions"
    require('fzf-lua').setup({
      fzf_opts = {
        ["--layout"] = "default",
      },
      grep = {
        actions = {
          ["ctrl-g"] = { actions.toggle_ignore },
          ["ctrl-x"] = { actions.grep_lgrep },
        }
      }
    })
  end,
  init = function()
    -- Ignore all in gitignore
    -- vim.env["FZF_DEFAULT_COMMAND"] = '{git status -u --short | grep "^?" | cut -c 4- & git ls-files | grep -Ev "\\.(png|jpg|ma|jsfl|ogg|glb|meta|mb)$"} & git ls-files | grep -Ev "\\.(png|jpg|ma|jsfl|ogg|glb|meta|mb)$"; }'
    vim.g.fzf_history_dir = '~/.fzf-history'
    vim.keymap.set("n", "<c-l>", function() require('fzf-lua').files({ git_icons = false }) end)
    vim.keymap.set("n", "<c-g>", function() require('fzf-lua').files({ no_ignore  = true, git_icons = false }) end)
    vim.keymap.set("n", "<c-p>", function() require('fzf-lua').live_grep({ cmd = "git grep --recurse-submodules --line-number --column --color=always", git_icons = false}) end)
    vim.keymap.set("n", "<c-u>", function() require('fzf-lua').live_grep({ cmd = "git grep --untracked --line-number --column --color=always", git_icons = false }) end)
    vim.keymap.set("n", "<m-g>", function() require('fzf-lua').live_grep({ cmd = "git grep --line-number --column --color=always", git_icons = false }) end)
    vim.keymap.set("n", "<C-b>", ":FzfLua buffers<CR>")
    vim.keymap.set("n", "gd", ":FzfLua lsp_definitions<CR>")
    vim.keymap.set("n", "qf", ":FzfLua lsp_code_actions<CR>")
    vim.keymap.set("n", "gr", ":FzfLua lsp_references<CR>")
    vim.keymap.set("n", "<M-b>", ":FzfLua blines<CR>")  -- buffer lines
  end
}
