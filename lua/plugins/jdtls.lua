return {
    'mfussenegger/nvim-jdtls',
    ft = { 'java' },
    config = function()
    local jdtls = require('jdtls')

    -- Find project root
    local root_markers = { '.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle' }
    local root_dir = require('jdtls.setup').find_root(root_markers)
    if not root_dir then return end

        -- Create a per-project workspace folder
    local project_name = vim.fn.fnamemodify(root_dir, ':p:h:t')
    local workspace_dir = vim.fn.stdpath('cache') .. '/jdtls/workspace/' .. project_name

        -- JDTLS config
        local config = {
            cmd = {
                'jdtls',
                '-configuration', vim.fn.stdpath('cache') .. '/jdtls/config',
                '-data', workspace_dir
            },
            root_dir = root_dir,
            settings = {
              java = {}
            }
        }

        jdtls.start_or_attach(config)
        end
}
