vim.opt.termguicolors = true

require('bufferline').setup{
  options = {
    numbers = "none",
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    show_close_icon = false,
    show_buffer_close_icons = true,
    diagnostics = "nvim_lsp", -- 使用 LSP 诊断信息
    diagnostics_update_in_insert = false,
    offsets = {
      {
        filetype = "NvimTree", -- 指定文件类型
        text = "File Explorer", -- 显示文本
        text_align = "left", -- 文本对齐方式
        separator = true, -- 是否显示分隔符
				highlight = "Directory",
      }
    },
  }
}

