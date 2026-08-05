-- Pretty format json
vim.api.nvim_create_user_command('Bd', function()
  pcall(vim.cmd[[bp|bd #]])
end,{})

-- -- remove trailing whitespace on write
-- vim.api.nvim_create_autocmd('BufWritePre', {
-- group = vim.api.nvim_create_augroup('BufWritePreWhitespace', { clear = true }),
--   pattern = '*',
--   callback = function()
--         pcall(vim.cmd[[%s/\s\+$//e]])
--     end,
--     group = generalSettingsGroup
-- })

-- remap cuda header files to cuda
vim.api.nvim_create_autocmd({'BufNewFile' , 'BufRead'}, {
  group = vim.api.nvim_create_augroup('BufNewFileCUH', { clear = true }),
  pattern = '*.cuh',
  callback = function()
        vim.o.ft = 'c'
    end,
})

vim.api.nvim_create_autocmd({'BufNewFile' , 'BufRead'}, {
  group = vim.api.nvim_create_augroup('BufNewFileSchema', { clear = true }),
  pattern = '*.schema',
  callback = function()
        vim.o.ft = 'yaml'
    end,
})

vim.api.nvim_create_autocmd({'BufNewFile' , 'BufRead'}, {
  group = vim.api.nvim_create_augroup('BufNewFileCU', { clear = true }),
  pattern = '*.cu',
  callback = function()
        vim.o.ft = 'cpp'
    end,
})

vim.api.nvim_create_autocmd({'BufNewFile' , 'BufRead'}, {
  group = vim.api.nvim_create_augroup('TOML', { clear = true }),
  pattern = '*.cnf',
  callback = function()
        vim.o.ft = 'toml'
    end,
})

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('TermOpenTerminalSets', { clear = true }),
  pattern = '*',
  callback = function()
    vim.o.relativenumber = false
    vim.o.number = false
    vim.o.signcolumn = 'no'
  end,
})

vim.api.nvim_create_autocmd('BufReadPre', {
  group = vim.api.nvim_create_augroup('BufReadPreSets', { clear = true }),
  pattern = '*',
  callback = function()
      vim.o.relativenumber = true
      vim.o.number = true
      vim.o.signcolumn = 'yes'
    end,
})
