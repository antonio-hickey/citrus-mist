local util = require('minty-melon.util')

local M = {}

function M.colorscheme()
    -- If a colorscheme is already set
    -- then clear it's highlighting.
    if vim.g.colors_name then
        vim.cmd('hi clear')
    end

    -- Theme meta shit
    vim.opt.termguicolors = true
    vim.g.colors_name = 'minty-melon'

    -- Perform the theme highlighting
    local theme = require('minty-melon.theme').set_colors()
    for group, color in pairs(theme) do
        util.highlight(group, color)
    end
end

return M

