-- 引入 nvim-autopairs 模块
local npairs = require('nvim-autopairs')

-- 默认设置
npairs.setup({
  check_ts = true, -- 使用 Treesitter 进行智能匹配
  fast_wrap = {
    map = '<M-e>', -- 使用 Alt+e 快速包裹
    chars = { '{', '[', '(', '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%.] ]], '%s+', ''),
    offset = 0, -- 偏移量
    end_key = '$', -- 结束键
    keys = '1234567890' -- 快速选择键
  },
})

-- 自定义规则示例
local Rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')

npairs.add_rules({
  Rule("(", ")", {"lua", "vim"})
    :with_pair(cond.not_after_regex("%%"))
    :with_del(cond.not_after_regex("xx")),
  
  Rule("{", "}", "tex"),
  Rule("[", "]", "tex"),
  Rule("'", "'", "lua"),
  Rule('"', '"', "lua"),
})

-- 禁用特定文件类型
npairs.add_rule(
  Rule("$$", "$$")
    :with_pair(cond.not_filetypes({"lua", "vim"}))
)

