if vim.env.NEW_PC
then
  vim.cmd("LspInstall yamlls jdtls jsonls")
  -- require('nvim-treesitter').install({ 'python' })
  -- require('nvim-treesitter').install({ 'markdown' })
  -- require('nvim-treesitter').install({ 'yaml' })
end
