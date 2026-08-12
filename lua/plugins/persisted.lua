-- save and restore vim
--
-- vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

return {
  "olimorris/persisted.nvim",
  lazy = false,
  opts = {
    -- 1. Main configuration behavior
    autostart = true,
    save_dir = ".vim_sessions/" .. vim.loop.os_uname().sysname .. "/",

    -- 2. DYNAMIC AUTOLOAD:
    -- Only auto-load the session if zero command line arguments are given.
    -- If you run 'nvim file.txt', argc() is 1, turning autoload off entirely.
    autoload = vim.fn.argc() == 0, 

    -- Terminal safety hooks
    on_autoload_callback = function()
      vim.cmd("doautocmd TermOpen")
    end,
  },
  config = function(_, opts)
    if vim.fn.isdirectory(opts.save_dir) == 0 then
      vim.fn.mkdir(opts.save_dir, "p")
    end
    require("persisted").setup(opts)
  end,
}
