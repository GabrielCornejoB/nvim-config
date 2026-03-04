-- check if jdtls exists 
local status = pcall(require, 'jdtls')
if not status then
    vim.notify('[jdtls] jdtls lsp server not found', vim.log.levels.ERROR)
    return
end

-- find project root directory
local rootDir = require('jdtls.setup').find_root { 'settings.gradle' }
if not rootDir or rootDir == '' then
    vim.notify('[jdtls] no project root found', vim.log.levels.WARN)
end

-- variables fot jdtls, and cache paths
local home = os.getenv 'HOME'
local jdtlsPath = home .. '/.local/share/nvim/mason/packages/jdtls'
local eclipseLauncher = vim.fn.glob(home .. '/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar')
local projectName = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspaceDir = home .. '/.local/share/nvim/jdtls-workspace/' .. projectName

local config = {
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=WARN',
        '-Xmx6g', '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-javaagent:' .. jdtlsPath .. '/lombok.jar',
        '-jar', eclipseLauncher,
        '-configuration', jdtlsPath .. '/config_mac',
        '-data', workspaceDir,
    },
    root_dir = rootDir,
    settings = {
        java = {
            import = {
                gradle = { enabled = true },
                maven = { enabled = false },
                gradleWrapper = { enabled = true },
            },
            maven = { downloadSources = true },
            inlayHints = {
                parameterNames = { enabled = 'all' }
            },
        }
    },
}

require('jdtls').start_or_attach(config)

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function()
        print("attached")
    end
})
