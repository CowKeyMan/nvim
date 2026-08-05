local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        if opts.desc then
            opts.desc = "keymaps.lua: " .. opts.desc
        end
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

if (vim.loop.os_uname().sysname == "Windows_NT")
then
  vim.keymap.set({"n"}, "<c-t>", ":tab terminal pwsh.exe<CR>a")
  vim.keymap.set({"i"}, "<c-t>", "<ESC>:tab terminal pwsh.exe<CR>a")
  vim.keymap.set("n", "vv", ":e<space>~/AppData/Local/nvim/<CR>")
elseif (vim.loop.os_uname().sysname == "Linux")
then
  vim.keymap.set({"n"}, "<c-t>", ":tab terminal<CR>a")
  vim.keymap.set({"i"}, "<c-t>", "<ESC>:tab terminal<CR>a")
  vim.keymap.set("n", "vv", ":e<space>~/.config/nvim/<CR>")
end

vim.keymap.set("i", "<C-l>", "<C-x><C-l>")
vim.keymap.set("i", "<C-f>", "<C-x><C-f>")
vim.keymap.set({"n", "t"}, "<C-e>", "<C-^>")
vim.keymap.set("n", "<M-n>", "gT")
vim.keymap.set({"n", "v"}, "<S-k>", "k")
vim.keymap.set("n", "<M-p>", "gt")
vim.keymap.set("t", "<M-n>", "<C-\\><C-n>gT")
vim.keymap.set("t", "<M-p>", "<C-\\><C-n>gt")
vim.keymap.set({"n", "v"}, "<S-l>", "$")
vim.keymap.set({"n", "v"}, "<S-h>", "^")
vim.keymap.set("n", "Q", "q")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "<C-j>", "i<CR><Esc>-$")
vim.keymap.set("n", "<Space>", "za")
vim.keymap.set("n", "cn", ":cn<CR>")
vim.keymap.set("n", "cp", ":cp<CR>")
vim.keymap.set("n", "zn", ":lnext<CR>")
vim.keymap.set("n", "zo", ":lopen<CR>")
vim.keymap.set("n", "zp", ":lprevious<CR>")
vim.keymap.set("t", "<C-w>n", "<C-\\><C-n>", { noremap = true})
vim.keymap.set("t", "<C-w><c-n>", "<C-\\><C-n>", { noremap = true})
vim.keymap.set("i", "<C-n>", "<C-x><C-n>", { noremap = true})
vim.keymap.set("t", "<C-S-v>", '<C-\\>"*')
vim.keymap.set("v", "<C-c>", '"+ygv')
vim.keymap.set("n", "gL", "g$")
vim.keymap.set("n", "gH", "g^")
vim.keymap.set("n", "g<Space>", "f,a<Enter><Esc>w")
vim.keymap.set("n", "ms", "crs")
vim.keymap.set({"n", "v"}, "<M-j>", "10j")
vim.keymap.set({"n", "v"}, "<M-k>", "10k")

-- Comments
vim.keymap.set("n", "mc", "gcc", {remap=true}) -- Comment
vim.keymap.set("v", "mc", "gc", {remap=true}) -- Comment
