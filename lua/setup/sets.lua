-- tabbing
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.g.indentLine_char = '|'

-- background
vim.bg = dark
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_disable_italic_comment = 1
vim.g.gruvbox_material_enable_italic = 0
vim.g.gruvbox_material_enable_bold = 0

-- colors
vim.api.nvim_set_hl(0, 'ErrorText', {cterm=underline, ctermfg=9, guisp=NONE}) -- Make Error Text underlined and red
vim.api.nvim_set_hl(0, 'SpellBad', {cterm=underline, ctermfg=9, guisp=NONE})  -- " Make Error Text underlined and red

-- vim-cpp-modern features
vim.g.cpp_function_highlight = 0 -- Disable function highlighting
vim.g.cpp_attributes_highlight = 1 -- Enable highlighting of C++11 attributes
vim.g.cpp_member_highlight = 1 -- Highlight struct/class member variables
vim.g.cpp_simple_highlight = 1 -- Put all standard C and C++ keywords under Vim's highlight group 'Statement'

-- misc
vim.o.ff = unix -- Line endigs to unix
-- vim.o.autochdir " always change pws to current buffer
vim.o.smartindent = true -- indent for certain languages is done automatically  (Ex: after using open curly bracket)
vim.o.autoindent = true -- indent for certain languages is done automatically  (Ex: after using open curly bracket)
vim.o.fileformat = unix -- unix line endings
vim.o.updatetime = 250 -- time before plugins are called, which trigger after you stop typing (by default it is 4000ms which is too long)
vim.o.cindent = false -- Do not indent with 4 spaces in C files
vim.o.compatible = false -- allows to use backspace (and some other miscellaneous things)
vim.o.backspace = indent,eol,start -- Allows backspace to be used even at end of lines and such
vim.o.autoindent = true -- apply current line indent to the next line
vim.o.number = true -- show line numbers
vim.o.nrformats = '' -- numbers with padded 0s will not be treated in octal form
vim.opt.formatoptions = vim.o.formatoptions:gsub('t', '') -- stop auto line break
vim.opt.relativenumber = true -- show relative line numbers (makes jumping to other lines with j and k easier)
vim.o.errorbells = false -- no beeping sounds
vim.o.ignorecase = true -- case insensitive case by default
vim.o.smartcase = true -- case insensitive case by default, until we enter a capital letter or end it with \ C
vim.o.swapfile = false -- No annoying .swp file when editing
vim.o.incsearch = true -- When typing, show the pattern as it is being types
vim.o.termguicolors = true -- allow colouring of gui terminal
vim.o.scrolloff = 1 -- how many lines below or above the cursor before scrolling
vim.o.showmode = true -- tell me which mode I am on at the bottom of the screen
vim.o.wildmenu = true -- used for command line completion (show the possible options, rather than cycling blindly)
-- vim.o.wildmode=list:longest,full " upon first tab in cmd mode show the list, then start autocompleting the fullest
vim.o.cmdheight = 1 -- height of bottom row where cmd command and messages are shown
vim.o.hidden = true -- Allows you to hide buffers, so that you can edit other buffers while leaving other buffers unsaved but still open in buffers
vim.o.foldmethod = 'indent' -- Fold by indentation, rather than brackets
vim.o.foldenable = false -- not folded by default
vim.o.linebreak = true -- allow vim to break lines on wrap (Ex: by spaces or special characters (note: this is only visual)
vim.o.wrap = true -- no horizontal scrolling
vim.o.breakindent = true -- if line is broken, it will continue at the same indentation as the line before it
vim.o.showbreak = '>' -- Character to inicate that the line is broken
vim.o.history = 1000 -- Command line history
-- vim.o.guiheadroom=0 " no padding
vim.o.signcolumn = 'yes' -- do not show extra column on the left
vim.o.encoding = 'utf-8' -- not just ascii characters
-- vim.o.renderoptions=type:directx " To be able to render digraph characters properly
-- ignore these combinations in ctrl p and vim autocompletion
-- vim.o.wildigncore = vim.o.wildignore .. ',/.git/*,*/htmlcov/*,*/__init__.py,*/__pycache__/*,*.doctree,*.obj,*.lib,*.o,*.exp,*.gcda,*.exe,*.gcno,*.dll,.a,*.class,*.toc,*.nlo,*.bbl,*.blg,*.aux,*.gz,*.bst,*.pdf,*.cls,*.jpg,*.png,*/node_modules/*,*.ma'
vim.o.showcmd = true -- show current command being typed
vim.o.matchpairs = vim.o.matchpairs .. ',<:>'
vim.o.timeoutlen = 1000
vim.o.ttimeoutlen=0
vim.o.paste = false
vim.o.ssop = vim.o.ssop:gsub('folds,', '') -- do not store global and local values in a session
vim.o.ssop = vim.o.ssop:gsub('options,', '') -- do not store folds in a session
vim.o.backspace = 'indent,eol,start'
vim.o.completeopt = 'fuzzy,longest,menuone'

-- Used for pattern matching
vim.o.maxmempattern = 5000000

-- Used to not hide items like bold '*'s in markdown files, or '"'s in JSON files
vim.g.conceallevel = 0

if (vim.loop.os_uname().sysname == "Windows_NT")
then
  vim.o.shell='pwsh.exe'
  vim.o.shellxquote = ''
  vim.o.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
  vim.o.shellquote = ''
  vim.o.shellpipe = '| Out-File -Encoding UTF8 %s'
  vim.o.shellredir = '| Out-File -Encoding UTF8 %s'
end
