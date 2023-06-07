--@type MappingsTable
local M = {}

local options = { noremap = true }

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qq"] = { "<CMD>qa<CR>", "Quit All", opts = { noremap = true } },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", "Move Line Up", opts = options },
    ["<A-j>"] = { "<cmd>m .+1<cr>==", "Move Line Down", opts = options },
    -- ["<leader>ca"] = { "<CMD>Lspsaga code_action<CR>", "show LspSaga code actions", opts = options },
  },
  i = {
    ["<C-s>"] = { "<CMD>w<CR><ESC>", "save file and return to normal mode", opts = { noremap = true } },
    ["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi", "Move Line Up", opts = options },
    ["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi", "Move Selection Down", opts = options },
  },

  v = {
    ["<C-s>"] = { "<CMD>w<CR><ESC>", "save file and return to normal mode", opts = { noremap = true } },
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", "Move Line Up", opts = options },
    ["<A-j>"] = { ":m '>+1<cr>gv=gv", "Move Selection Down", opts = options },
  },
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "find files" },
  },
}

M.lspsaga = {
  n = {
    ["<A-e>"] = { "<CMD>Lspsaga show_cursor_diagnostics<CR>", "show Lsp diagnostic under cursor", opts = options },
    ["<leader>ca"] = { "<CMD>Lspsaga code_action<CR>", "show LspSaga code actions", opts = options },
  },
}

M.nvterm = {
  n = {
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "new horizontal term",
    },
  },
  t = {
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "new vertical term",
    },
  },
}

-- more keybinds!

return M
