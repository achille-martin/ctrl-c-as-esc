-- Initialise module management for plugin

local hello_world_module = require('ctrl-c-as-esc.hello_world')

local M = {}

-- # Define a setup function to instantiate the behaviour of the plugin
-- #
-- # Use the following to setup the plugin and define the config:
-- # `require('ctrl-c-as-esc').setup({ keymap = "<C-h>" })`
function M.setup(opts)
    -- Merge user options with defaults
    opts = opts or {}

    -- Create command to trigger the function
    vim.api.nvim_create_user_command(
        "PrintHelloWorld",
        hello_world_module.print_hello_world,
        {}
    )

    -- Set up a key mapping
    -- Use opts.keymap if provided, otherwise set a default
    local keymap = opts.keymap or '<leader>phw'

    -- Create the keymap
    vim.keymap.set('n', keymap, hello_world_module.print_hello_world, {
        desc = "Print 'Hello World!' via plugin",
        silent = true
    })
end

return M
