-- Convierte el código en una estructura jerarquica para resaltar el texto
return {
    "nvim-treesitter/nvim-treesitter",
    commit = 'f8bbc3177d929dc86e272c41cc15219f0a7aa1ac',
    build = 'TSUpdate',
    config = function()
        --[[
        --local treesitterConfig = require('nvim-treesitter.config')

        require'nvim-treesitter'.install { 
                "vim", "vimdoc", "lua",
                "java", "javadoc", "groovy", "properties",
                "javascript", "html", "css", "jsdoc",
                "typescript", "angular", "scss",
                "json", "yaml", "xml",
                "gitignore", "editorconfig",
                "markdown", "markdown_inline",
                "dockerfile",
        }
        --[[
        treesitterConfig.setup({
            ensure_installed = { 
                "vim", "vimdoc", "lua",
                "java", "javadoc", "groovy", "properties",
                "javascript", "html", "css", "jsdoc",
                "typescript", "angular", "scss",
                "sql",
                "json", "yaml", "xml",
                "gitignore", "editorconfig",
                "markdown", "markdown_inline",
                "dockerfile",
            },
            auto_install = true,
            highlight = { enable = true },
            autotag = { enable = true },
            indent = { enable = true },
        })
        ]]--
    end
}
