vim.cmd[[

set nohlsearch " no search higlighting

set shellslash " Useful in windows for file completion with slash but useful in general

syntax on
cd %:p:h " Navigate to current file's path on startup

" WSL yank support
if has('win32')
  let s:clip = 'C:/Windows/System32/clip.exe'  " change this path according to your mount point
else
  let s:clip = '/mnt/c/Windows/System32/clip.exe'
endif
if executable(s:clip)
augroup WSLYank
  autocmd!
  autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
augroup END
endif

augroup MyTerminal
  au!
  autocmd TermOpen * :set nonumber norelativenumber signcolumn=no
augroup END

" persistent undo so if I close a file, its still there
if has("persistent_undo")
   let target_path = expand('~/.vim/.undo_and_backup_dir')
    " create the directory and any parent directories if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir=target_path
    let &backupdir=target_path
    set undofile
    set backup
endif

]]
