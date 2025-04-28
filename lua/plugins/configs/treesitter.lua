--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: plugins/configs/treesitter.lua
-- Description: nvim-treesitter configuration
-- Original-Author: Kien Nguyen-Tuan <kiennt2609@gmail.com>

-- Load custom configurations
local exist, custom = pcall(require, "custom")
local ensure_installed = exist and type(custom) == "table" and custom.ensure_installed or {}

return {
    -- A list of parser names, or "all"
    ensure_installed = {
        "go", "python", "dockerfile", "json", "bash",
        "yaml", "markdown", "rust", "ruby",
        "toml", "vim", "lua", ensure_installed
    },

    rainbow = {
        enable = true, -- 启用 rainbow-delimiters
        extended_mode = true, -- 同时高亮标签等其他分隔符
        max_file_lines = 1000, -- 限制文件行数
    },

    highlight = {
        enable = true,
        use_languagetree = true
    },
    indent = {
        enable = true
    },
    autotag = {
        enable = true
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false
    },
    refactor = {
        highlight_definitions = {
            enable = true
        },
        highlight_current_scope = {
            enable = false
        }
    }
}
