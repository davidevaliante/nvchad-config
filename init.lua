-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local function augroup(name)
  return vim.api.nvim_create_augroup("user" .. name, { clear = true })
end

local function set_typescriptreact_options()
  vim.opt_local.wrap = true
  vim.opt_local.linebreak = true
  vim.opt_local.breakat = [[\ \t\]]
  vim.opt_local.textwidth = 80
  vim.opt_local.autoindent = true
  vim.opt_local.breakindent = true
end

-- close TS and TSX filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
  group = augroup "set_ts_maxwidth",
  pattern = {
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "typescript",
  },
  callback = function()
    set_typescriptreact_options()
    vim.api.nvim_command "Lazy load tailwind-sorter.nvim"
  end,
})

vim.api.nvim_command "highlight CursorLineNr guifg=none guibg=#f2295f"
