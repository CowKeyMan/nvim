return {
  'mhartington/formatter.nvim',
  init = function()
    require("formatter").setup({
      logging = true,
      log_level = vim.log.levels.INFO,
      filetype = {
        python = {
          function() return { exe = "ruff", args = { "check", "--fix", "-q", "-" }, stdin = true, } end,
          function() return { exe = "ruff", args = { "format", "-q", "-" }, stdin = true, } end
        },
        cpp = {
          require("formatter.filetypes.cpp").clangformat,
          -- function() return { exe = "clang-tidy", args = { "-fix-errors" }, stdin = false, } end,
        },
        cs = {
          require("formatter.filetypes.cs").clangformat,
          -- function() return { exe = "dotnet", args = { "format", "--include", vim.fn.expand('%') }, stdin = false, } end,
        },
        terraform = {
          function() return { exe = "terraform", args = { "fmt", "-" }, stdin = true, } end,
        },
        yaml = {
          require('formatter.filetypes.yaml').yamlfmt
        },
        pbtxt = {
          function() return { exe = "txtpbfmt", stdin = true, } end,
        },
        csv = {
          function() return { exe = "python", args = { "~/scripts/format_csv.py --arrange-lists"},  stdin = true, } end,
        },
        ["*"] = {
          require("formatter.filetypes.any").substitute_trailing_whitespace
        },
        json = {
          function() return { exe = "python", args = { "-m json.tool --indent 2"},  stdin = true, } end,
        },
        sql = {
          function() return { exe = "sqlfmt", args = { "-" },  stdin = true, } end,
          -- function() return { exe = "sqlfluff", args = { "fix", vim.api.nvim_buf_get_name(0) },  stdin = false, } end,
        },
      }
    })
    vim.keymap.set({"n"}, "mf", ":FormatWrite<CR>")
  end
}
