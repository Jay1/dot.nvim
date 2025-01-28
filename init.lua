require("config.lazy")
-- Tmux status bar management (at the top level)
vim.api.nvim_create_autocmd({ "VimEnter", "BufEnter", "WinEnter" }, {
    callback = function()
        vim.fn.system('tmux set status off')
    end,
})

vim.api.nvim_create_autocmd({ "VimLeave", "BufLeave", "WinLeave" }, {
    callback = function()
        vim.fn.system('tmux set status on')
    end,
})
