-- Safe require with error handling
local function safe_require(module)
    local ok, err = pcall(require, module)
    if not ok then
        vim.notify("Failed to load " .. module .. ": " .. err, vim.log.levels.ERROR)
        return nil
    end
    return err
end

safe_require("config.lazy")

-- Tmux status bar management (at the top level)
-- Only set up tmux integration if tmux is available
if vim.fn.executable('tmux') == 1 and vim.env.TMUX then
    vim.api.nvim_create_autocmd({ "VimEnter" }, {
        callback = function()
            pcall(function() vim.fn.system('tmux set status off') end)
        end,
    })

    vim.api.nvim_create_autocmd({ "VimLeave" }, {
        callback = function()
            pcall(function() vim.fn.system('tmux set status on') end)
        end,
    })
end
