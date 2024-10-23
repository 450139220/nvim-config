require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",        -- 已安装包的符号
            package_pending = "➜",          -- 待安装包的符号
            package_uninstalled = "✗",       -- 未安装包的符号
        },
        border = "rounded",  -- 窗口边框样式
        width = 0.8,         -- 窗口宽度
        height = 0.8,        -- 窗口高度
    },
    install_root_dir = vim.fn.stdpath("data") .. "/mason",  -- 安装路径
    max_concurrent_installers = 4,  -- 同时安装的最大数量
    log_level = vim.log.levels.INFO,  -- 日志级别
    auto_update = true,  -- 自动更新
    github = {
        download_url_format = "https://github.com/%s/releases/download/%s/%s",  -- GitHub 下载格式
    },
})

require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" },  -- 确保安装的 LSP 服务器列表
    automatic_installation = true,  -- 自动安装缺失的 LSP 服务器
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").lua_ls.setup {
	capabilities = capabilities,
}
