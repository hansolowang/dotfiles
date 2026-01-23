require'nvim-treesitter'.setup {
  install_dir = vim.fn.stdpath('data') .. '/site'
}

-- Install parsers
require'nvim-treesitter'.install { 'cpp', 'lua', 'vim', 'vimdoc', 'query', 'python' }

-- Enable tree-sitter highlighting for all supported filetypes
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
