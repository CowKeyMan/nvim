-- Save vim
if (vim.loop.os_uname().sysname == "Windows_NT")
then
return {
  'rmagatti/auto-session',
  opts = {
    root_dir = "./.vim_sessions/linux"
  },
  init = function()
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
  end
}
elseif (vim.loop.os_uname().sysname == "Linux")
then
return {
  'rmagatti/auto-session',
  opts = {
    root_dir = "./.vim_sessions/windows"
  },
  init = function()
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
  end
}
end
