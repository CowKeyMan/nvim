-- Debugger
return {
  'puremourning/vimspector',
  init = function()
    vim.keymap.set("n", "<F1>", "<Plug>VimspectorBalloonEval")
    vim.keymap.set("n", "<F3>", "<Plug>VimspectorRestart")
    vim.keymap.set("n", "<F4>", "<Plug>VimspectorToggleBreakpoint")
    vim.keymap.set("n", "<F5>", "<Plug>VimspectorContinue")
    vim.keymap.set("n", "<F6>", "<Plug>VimspectorStop")
    vim.keymap.set("n", "<F7>", ":VimspectorReset<CR>")
    vim.keymap.set("n", "<F8>", "<Plug>VimspectorRunToCursor")
    vim.keymap.set("n", "<F9>", "<Plug>VimspectorStepOver")
    vim.keymap.set("n", "<F10>", "<Plug>VimspectorStepInto")
    vim.keymap.set("n", "<F12>", "<Plug>VimspectorStepOut")
  end
}
