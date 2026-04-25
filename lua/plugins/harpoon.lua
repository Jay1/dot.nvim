return {
    -- {{{ Define the Harpoon lazy.vim specificaiton.

    "ThePrimeagen/harpoon",
    enabled = true,
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    -- ----------------------------------------------------------------------- }}}
    -- {{{ Define events to load Harpoon.

    keys = function()
        local harpoon = require("harpoon")

        return {
            -- Harpoon marked files 1 through 4
            {
                "<leader>1",
                function()
                    harpoon:list():select(1)
                end,
                desc = "Harpoon buffer 1",
            },
            {
                "<leader>2",
                function()
                    harpoon:list():select(2)
                end,
                desc = "Harpoon buffer 2",
            },
            {
                "<leader>3",
                function()
                    harpoon:list():select(3)
                end,
                desc = "Harpoon buffer 3",
            },
            {
                "<leader>4",
                function()
                    harpoon:list():select(4)
                end,
                desc = "Harpoon buffer 4",
            },

            -- Harpoon next and previous.
            {
                "<a-5>",
                function()
                    harpoon:list():next()
                end,
                desc = "Harpoon next buffer",
            },
            {
                "<a-6>",
                function()
                    harpoon:list():prev()
                end,
                desc = "Harpoon prev buffer",
            },

            -- Harpoon user interface.
            {
                "<leader>ha",
                function()
                    harpoon:list():add()
                end,
                desc = "Add file to harpoon",
            },
            {
                "<leader>hh",
                function()
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = "Harpoon quick menu",
            },

            -- Harpoon user interface.
            {
                "<a-9>",
                function()
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = "Open Harpoon window",
            },
        }
    end,

    -- ----------------------------------------------------------------------- }}}
    -- {{{ Use Harpoon defaults or my customizations.

    opts = function(_, opts)
        opts.settings = {
            save_on_toggle = false,
            sync_on_ui_close = false,
            save_on_change = true,
            enter_on_sendcmd = false,
            tmux_autoclose_windows = false,
            excluded_filetypes = { "harpoon", "alpha", "dashboard", "gitcommit" },
            mark_branch = false,
            key = function()
                return vim.fn.getcwd()
            end,
        }
    end,

    -- ----------------------------------------------------------------------- }}}
    -- {{{ Configure Harpoon.

    config = function(_, opts)
        require("harpoon").setup(opts)
    end,

    -- ----------------------------------------------------------------------- }}}
}
