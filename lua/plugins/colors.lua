local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "none" })
end
return {
    --{
    --"Tsuzat/NeoSolarized.nvim",
    --lazy = false, -- make sure we load this during startup if it is your main colorscheme
    --priority = 1000, -- make sure to load this before all the other start plugins
    --config = function()
    -- vim.cmd [[ colorscheme NeoSolarized ]]
    --enable_transparency()
    --end
    --},
    {
        'sainnhe/sonokai',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            vim.opt.termguicolors = true
            vim.g.sonokai_style = 'andromeda'

            -- directly inside the plugin declaration.
            vim.g.sonokai_enable_italic = true
            vim.g.sonokai_disable_italic_comment = false
            vim.g.sonokai_current_word = 'bold'
            vim.g.sonokai_diagnostic_line_highlight = true
            vim.cmd.colorscheme('sonokai')
            enable_transparency()
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {}
    },
}
