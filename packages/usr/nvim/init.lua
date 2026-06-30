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
vim.keymap.set({ "n", "i" }, "<A-CR>", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set({ "n", "i", "v" }, "<A-1>", "<Cmd>NvimTreeToggle<CR>", { desc = "Open file browser" })
vim.keymap.set({ "n", "i", "v" }, "<C-e>", "<Cmd>Pick files<CR>", { desc = "Pick files" })
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc>:w<CR>", { desc = "Save file" })
vim.keymap.set({ "n", "v" }, "<C-d>", "yyp", { desc = "Duplicate line (below)" })
vim.keymap.set({ "n", "v" }, "<X1Mouse>", "<C-o>", { silent = true, desc = "Go backward" })
vim.keymap.set({ "n", "v" }, "<X2Mouse>", "<C-i>", { silent = true, desc = "Go forward" })

-- Plugins
vim.pack.add({
    { src = "https://github.com/akinsho/bufferline.nvim" },
    { src = "https://github.com/esmuellert/codediff.nvim" },
    { src = "https://github.com/folke/which-key.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-mini/mini.diff" },
    { src = "https://github.com/nvim-mini/mini.icons" },
    { src = "https://github.com/nvim-mini/mini.pick" },
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/saghen/blink.cmp" },
    { src = "https://github.com/saghen/blink.lib" },
})

require("blink.cmp").setup({ keymap = { preset = 'enter' } })
require("bufferline").setup()
require("codediff").setup()
require("mini.diff").setup()
require("mini.icons").setup()
require("mini.pick").setup()
require("nvim-tree").setup()
require("which-key").setup()

-- LSP
vim.lsp.enable({ "clangd", "html", "jsonls", "lua_ls", "nil_ls", "svelte", "tailwindcss", "ts_ls" })
vim.diagnostic.config({ virtual_text = true })
