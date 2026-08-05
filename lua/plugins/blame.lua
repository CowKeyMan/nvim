  -- git blame
return {
  'FabijanZulj/blame.nvim',
  opts = {
      enabled = true,
  },
  init = function()
    vim.api.nvim_create_user_command('Blame', function()
      pcall(vim.cmd[[BlameToggle]])
    end,{})
  end
}
