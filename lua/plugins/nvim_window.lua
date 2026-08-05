-- Easily jump between windows that are not nearby
return {
  'yorickpeterse/nvim-window',
  opts = {
    -- The characters available for hinting windows.
    chars = {
      'a', 'b', 'c', 'd', 'e', 'f', 'g', 'i', 'm', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
    },
    -- A group to use for overwriting the Normal highlight group in the floating window. This can be used to change the background color.
    normal_hl = 'Normal',
    -- The border style to use for the floating window.
    border = 'single',
    -- How the hints should be rendered. The possible values are:
    -- - "float" (default): renders the hints using floating windows
    -- - "status": renders the hints to a string and calls `redrawstatus`, allowing you to show the hints in a status or winbar line
    render = 'float',
  },
  init = function()
    vim.keymap.set("n", "<c-w><c-w>", ":lua require('nvim-window').pick()<cr>")
  end
}
