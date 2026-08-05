return {
  'danymat/neogen',
  config=true,
  version="*",
  opts = {
    enabled = true,
    languages = {
        python = {
            template = {
                annotation_convention = "google_docstrings"
              }
        },
    }
  },
  init = function()
    vim.keymap.set("n", "mn", ":Neogen func<CR>")
  end
}
