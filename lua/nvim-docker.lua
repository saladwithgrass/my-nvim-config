local M = {}

vim.lsp.log.set_level(vim.lsp.log.levels["DEBUG"])

local function running_containers()
    local docker_ps = vim.system(
        {'docker', 'ps', '--format', '{{.Names}}'},
        {text=true}
    ):wait().stdout
    local names = {}
    for value in string.gmatch(docker_ps, "[^\n]+") do
        value = value:gsub('\n', '')
        table.insert(names, value)
    end
    return names
end

local function get_lsp_command(container_name)
    return {
        'docker',
        'exec',
        '-i',
        container_name,
        'pyright-langserver',
        '--stdio'
    }
end

-- M.containers = running_containers()

local function attach_lsp_to_docker(opt)
    local container_name = opt.args

    print('attaching to ', container_name)

    local cmd = get_lsp_command(container_name)
    local langserver_opts = {
        cmd=cmd,
        root_dir='/root/workspace',
        filetypes = {'python'}
    }
    langserver_opts.capabilities =
        require('blink.cmp').get_lsp_capabilities(langserver_opts.capabilities)
    vim.lsp.config('pyright-docker', langserver_opts)
    vim.lsp.enable('pyright-docker')
    -- vim.lsp.enable('pyright', false)
end

vim.api.nvim_create_user_command(
    "DockerLspAttach",
    attach_lsp_to_docker,
    {
        nargs=1,
        complete=function(arg_lead)
            return vim.tbl_filter(
                function(opt)
                    return opt:find(arg_lead, 1, true) == 1
                end, running_containers()
            )
        end
    }
)

return M
