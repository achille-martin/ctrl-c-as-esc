-- Define health checks for plugin

local M = {}

M.check = function()
    vim.health.start("ctrl-c-as-esc report")
    vim.health.ok("No dependencies required")
end

return M
