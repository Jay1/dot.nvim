return {
    "supermaven-inc/supermaven-nvim",
    config = function()
        require("supermaven-nvim").setup({
            -- Add any specific configuration options here
        })
    end,
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
}

