-- Explorador de archivos
return {
    'stevearc/oil.nvim',
    commit = 'f55b25e493a7df76371cfadd0ded5004cb9cd48a',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = function()
        require('oil').setup({
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ['<CR>'] = { 'actions.select' },
                ['<C-p>'] = { 'actions.preview', opts = { split = 'belowright' } },
                ['<leader>ov'] = { 'actions.select', opts = { vertical = true }, desc = '[o]pen on [v]ertical split' },
                ['<leader>oh'] = { 'actions.select', opts = { horizontal = true }, desc = '[o]pen on [h]orizontal split' },
                ['-'] = { 'actions.parent', mode = 'n' },
                ['_'] = { 'actions.open_cwd', mode = 'n' },
                ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
            },
            use_default_keymaps = false,
        })
        vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end
}
