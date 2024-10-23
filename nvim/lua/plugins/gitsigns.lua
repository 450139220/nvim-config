require('gitsigns').setup({
  signs = {
    add = { text = '+' }, -- 添加的标记
    change = { text = '~' }, -- 更改的标记
    delete = { text = '-' }, -- 删除的标记
    topdelete = { text = '_' }, -- 顶部删除的标记
    changedelete = { text = '~-' }, -- 更改并删除的标记
  },
  on_attach = function(bufnr)
    local gs = require('gitsigns')
    local function map(mode, lhs, rhs, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- 映射快捷键
    map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { desc = 'Stage hunk' })
    map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset hunk' })
    map('n', '<leader>hS', ':Gitsigns stage_buffer<CR>', { desc = 'Stage buffer' })
    map('n', '<leader>hu', ':Gitsigns undo_stage_hunk<CR>', { desc = 'Undo stage hunk' })
    map('n', '<leader>hp', ':Gitsigns preview_hunk<CR>', { desc = 'Preview hunk' })
    map('n', '<leader>hb', ':Gitsigns blame_line<CR>', { desc = 'Blame line' })
  end,
  word_diff = true, -- 启用单词差异
})

