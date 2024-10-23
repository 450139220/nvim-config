-- 加载 telescope
local telescope = require('telescope')
telescope.setup {
	defaults = {
		prompt_prefix = ">",
	}
}
-- 绑定按键
vim.api.nvim_set_keymap('n', '<C-p>', "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

