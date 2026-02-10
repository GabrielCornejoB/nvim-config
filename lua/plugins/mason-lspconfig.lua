-- compatibilidad entre nvim-lspconfig y mason, para configurar LSPs más fácilmente
return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { 'mason.nvim', 'nvim-lspconfig' },
    config = function()
        require("mason-lspconfig").setup({
            automatic_enable = {
                'lua_ls',
                'angular_ls',
                'ts_ls',
            }
        })
    end,
}
