-- Set your Spacebar as 'Leader' key shortcut anchor
vim.g.mapleader = " "

-- Space + pv opens the built-in file tree explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

-- Clear search highlighting by pressing Escape
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Keep the cursor centered on screen while jumping half-pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Space + w saves the file
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- Space + q quits the file
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit file" })

-- Add this somewhere in your lsp.lua setup / initialization
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
