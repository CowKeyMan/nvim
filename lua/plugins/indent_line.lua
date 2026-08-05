-- | char at indent
return {
  'Yggdroot/indentLine',
  init = function()
    vim.api.nvim_create_autocmd('TermOpen', {
      group = vim.api.nvim_create_augroup('TermOpenDisableIndentLines', { clear = true }),
      pattern = '*',
      callback = function()
        vim.cmd("IndentLinesDisable")
      end,
    })
    vim.g.indentLine_fileTypeExclude = {'csv', 'markdown', 'tex', 'json', 'codecompanion', 'opencode_terminal'}
  end
}
