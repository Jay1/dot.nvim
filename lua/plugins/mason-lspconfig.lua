local opts = {
    ensure_installed = {
        "bashls",
        "tailwindcss",
        "pyright",
        "lua_ls",
        "emmet_ls",
        "jsonls",
        -- Additional language servers
        "ts_ls",           -- TypeScript/JavaScript
        "rust_analyzer",   -- Rust
        "gopls",           -- Go
        "clangd",          -- C/C++
        "yamlls",          -- YAML
        "html",            -- HTML
        "cssls",           -- CSS
    },

    automatic_installation = true,
}

return {
    "mason-org/mason-lspconfig.nvim",
    opts = opts,
    event = "BufReadPre",
    dependencies = "mason-org/mason.nvim",
}
