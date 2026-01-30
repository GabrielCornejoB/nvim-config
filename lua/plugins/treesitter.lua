-- Convierte el código en una estructura jerarquica para resaltar el texto
return {
    "nvim-treesitter/nvim-treesitter",
    commit = 'f8bbc3177d929dc86e272c41cc15219f0a7aa1ac',
    dependencies = {
    },
    build = 'TSUpdate',
    config = function()
        local treesitterConfig = require('nvim-treesitter.config')

        treesitterConfig.setup({
            ensure_installed = { "sql", "vim", "vimdoc", "lua", "java", "javascript", "typescript", "html", "css", "json",  "markdown", "markdown_inline", "gitignore" },
            highlight = { enable = true },
            autotag = { enable = true },
            indent = { enable = true },
        })
    end
}
