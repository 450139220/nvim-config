vim.g.mapleader = " "
-- normal
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", ":newh<CR>", "<C-w>v")
vim.keymap.set("n", ":newv<CR>", "<C-w>s")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
vim.keymap.set("n", "<S-d>", ":bdelete<CR>")
-- insert

-- visual
vim.keymap.set("v", "J", ">+1<CR>gv=gv")
vim.keymap.set("v", "K", "<-2<CR>gv=gv")
