return {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    config = function()
        require('onedark').setup {
            style = 'cool',
            transparent = true,
            code_style = {
                comments = 'italic',
                keywords = 'bold',
                functions = 'none',
                strings = 'none',
                variables = 'none'
            }
        }
        require('onedark').load()
    end
}
