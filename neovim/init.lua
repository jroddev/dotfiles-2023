local opt = vim.opt

opt.colorcolumn = "80"
opt.relativenumber = true

-- Trims trailing whitespace on save
vim.cmd([[
   function! TrimWhiteSpace()
     %s/\s*$//
       ''
   endfunction
   autocmd FileWritePre * call TrimWhiteSpace()
   autocmd FileAppendPre * call TrimWhiteSpace()
   autocmd FilterWritePre * call TrimWhiteSpace()
   autocmd BufWritePre * call TrimWhiteSpace()
]])
