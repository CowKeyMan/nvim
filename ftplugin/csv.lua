vim.g.no_csv_maps = 1

local CsvUnarrange = function()
  pcall(vim.cmd[[%!python ~/scripts/format_csv.py --compact]])
end

local CsvSingleLine = function()
  pcall(vim.cmd[[%!python ~/scripts/format_csv.py --arrange-lists --single-line-lists]])
end

local CsvUnarrangeAndArrangeDefault = function()
  CsvUnarrange()
  pcall(vim.cmd[[%!python ~/scripts/format_csv.py]])
end

vim.keymap.set({"n"}, "mf", ":Format<CR>", { buffer=true } )
vim.keymap.set({"n"}, "mu", CsvUnarrange, { buffer=true } )
vim.keymap.set({"n"}, "mc", ":CSVAddColumn<CR>", { buffer=true } )
vim.keymap.set({"n"}, "mn", ":CSVNewRecord<CR>", { buffer=true } )
vim.keymap.set({"n"}, "ms", CsvSingleLine, { buffer=true } )

vim.keymap.set("n", "mF", CsvUnarrangeAndArrangeDefault, { buffer=true })

vim.b.nowrap = true

-- Create mark and unarrange
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup('BufWritePreCSV', { clear = true }),
    pattern = { "*.csv" },
    callback = function()
      vim.cmd("normal! mm")
      CsvUnarrange()
    end,
})

-- Undo and go back to mark
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup('BufWritePostCSV', { clear = true }),
    pattern = { "*.csv" },
    callback = function()
      vim.cmd("silent! :undo")
      vim.cmd("normal `m")
    end,
})
