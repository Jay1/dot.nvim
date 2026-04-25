return {
  "mason-org/mason.nvim",
  cmd = "Mason",
  event = "BufReadPre",
  opts = {
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
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
