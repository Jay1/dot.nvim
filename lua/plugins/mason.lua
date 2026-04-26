return {
  "mason-org/mason.nvim",
  cmd = "Mason",
  event = "BufReadPre",
  opts = {
    ensure_installed = {
      "bash-language-server",
      "tailwindcss-language-server",
      "pyright",
      "lua-language-server",
      "emmet-ls",
      "json-lsp",
      -- Additional language servers
      "typescript-language-server", -- TypeScript/JavaScript
      "rust-analyzer",              -- Rust
      "gopls",                      -- Go
      "clangd",                     -- C/C++
      "yaml-language-server",       -- YAML
      "html-lsp",                   -- HTML
      "css-lsp",                    -- CSS
    },
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
