-- https://github.com/folke/tokyonight.nvim
return {
    "folke/tokyonight.nvim",
    config = function()
        require("tokyonight").setup({
            style = "storm"
        })
        vim.cmd[[colorscheme tokyonight]]
    end,
}
