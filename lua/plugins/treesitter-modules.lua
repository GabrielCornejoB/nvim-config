return {
    'MeanderingProgrammer/treesitter-modules.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    ---@module 'treesitter-modules'
    ---@type ts.mod.UserConfig
    opts = {},
    config = function()
        require('treesitter-modules').setup({
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
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<leader>ss',
                    node_incremental = '<leader>si',
                    scope_incremental = '<leader>sc',
                    node_decremental = '<leader>sd',
                },
            },
        })
    end
}
