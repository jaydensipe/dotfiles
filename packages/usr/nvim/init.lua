-- Configuration
vim.o.termguicolors = true
vim.o.number = true;
vim.o.relativenumber = true;

vim.o.tabstop = 4;
vim.o.shiftwidth = 4;
vim.o.expandtab = true;
vim.o.autoindent = true;
vim.o.smartindent = true;
vim.o.winborder = "rounded";

-- Keybinds
vim.keymap.set({ "n", "i" }, "<C-A-l>", vim.lsp.buf.format, { desc = "Format file" })
vim.keymap.set({ "n", "i", "v" }, "<C-e>", ":Pick buffers<CR>", { desc = "Pick buffers" })
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc>:w<CR>", { desc = "Save file" })
vim.keymap.set({ "n", "i", "v" }, "<A-1>", ":Oil<CR>", { desc = "Open file browser" })

-- vim.keymap.set({ "n", "i", "v" }, "<leader>e", ":Pick buffers<CR>"})

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Plugins
vim.pack.add({
    { src = "https://github.com/saghen/blink.lib" },
    { src = "https://github.com/saghen/blink.cmp" },
    { src = "https://github.com/akinsho/bufferline.nvim" },
    { src = "https://github.com/nvim-mini/mini.pick" },
    { src = "https://github.com/folke/which-key.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/stevearc/oil.nvim" }
})

require("blink.cmp").setup({ keymap = { preset = 'enter' } })
require("bufferline").setup()
require("mini.pick").setup()
require("which-key").setup()
require("oil").setup()

-- LSP
vim.lsp.enable({ "clangd", "lua_ls", "nil_ls" })
vim.diagnostic.config({ virtual_text = true })
