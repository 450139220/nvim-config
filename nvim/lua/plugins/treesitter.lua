require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "python", "javascript", "html", "css", "typescript", "vue", 
    "markdown", "json", "vim", "lua", "markdown_inline" 
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
