# dot.nvim

A LazyVim-based Neovim configuration with a curated set of plugins for full-stack development.

Built on [LazyVim](https://www.lazyvim.org/) and [lazy.nvim](https://github.com/folke/lazy.nvim).

## What's inside

| Category | Tools |
|---|---|
| **Framework** | LazyVim starter with custom overrides |
| **Completion** | [blink.cmp](https://github.com/Saghen/blink.cmp) + [Supermaven](https://github.com/supermaven-inc/supermaven-nvim) (AI) |
| **Fuzzy Picker** | [Snacks Picker](https://github.com/folke/snacks.nvim) |
| **LSP** | [Mason](https://github.com/mason-org/mason.nvim) with 13 language servers |
| **Colorscheme** | [Catppuccin Mocha](https://github.com/catppuccin/nvim) (transparent background) |
| **Navigation** | [Harpoon 2](https://github.com/ThePrimeagen/harpoon), [Flash](https://github.com/folke/flash.nvim) |
| **UI** | [Alpha](https://github.com/goolord/alpha-nvim) dashboard, [Noice](https://github.com/folke/noice.nvim), [Bufferline](https://github.com/akinsho/bufferline.nvim), [Lualine](https://github.com/nvim-lualine/lualine.nvim) |
| **Git** | [Gitsigns](https://github.com/lewis6991/gitsigns.nvim), LazyVim Git extras |
| **Editing** | [Mini.ai](https://github.com/echasnovski/mini.ai), [Mini.pairs](https://github.com/echasnovski/mini.pairs), [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag), [todo-comments](https://github.com/folke/todo-comments.nvim) |
| **Formatting/Linting** | [conform.nvim](https://github.com/stevearc/conform.nvim), [nvim-lint](https://github.com/mfussenegger/nvim-lint) |
| **Search/Replace** | [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) |
| **Database** | [vim-dadbod](https://github.com/kristijanhusak/vim-dadbod) + UI + completion |
| **Session** | [persistence.nvim](https://github.com/folke/persistence.nvim) |
| **Markdown** | [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim), [markdown-preview](https://github.com/iamcco/markdown-preview.nvim) |

### Language support (LazyVim extras)

Go, Rust, TypeScript, JSON, Markdown, SQL, Tailwind CSS, TOML, YAML, Git

### Treesitter parsers

Bash, HTML, Lua, Python, C, C++, Dockerfile, CSS, SCSS, Regex, Vim, Query

### Mason language servers

`bash-language-server`, `tailwindcss-language-server`, `pyright`, `lua-language-server`, `emmet-ls`, `json-lsp`, `typescript-language-server`, `rust-analyzer`, `gopls`, `clangd`, `yaml-language-server`, `html-lsp`, `css-lsp`

## Structure

```
~/.config/nvim/
├── init.lua                  # Entry point: loads lazy, sets up tmux integration
├── lua/
│   ├── config/
│   │   ├── lazy.lua          # Plugin manager bootstrap + LazyVim setup
│   │   ├── options.lua       # Editor options (numbers, indents, clipboard, WSL support)
│   │   ├── keymaps.lua       # Custom keybindings
│   │   └── autocmds.lua      # Trim whitespace on save, markdown conceal
│   └── plugins/
│       ├── alpha.lua         # Dashboard with ASCII art + recent files
│       ├── color.lua         # Catppuccin Mocha (transparent)
│       ├── eunuch.lua        # vim-eunuch (Unix shell commands)
│       ├── fidget.lua        # LSP progress notifications
│       ├── harpoon.lua       # Harpoon 2 quick-switch
│       ├── lang.lua          # Treesitter parsers, LSP configs, markdown renderer
│       ├── mason.lua         # Language server auto-install
│       ├── noice.lua         # Cmdline/UI overhaul
│       ├── quality.lua       # todo-comments, autotag
│       └── supermaven.lua    # AI completion
├── stylua.toml               # Lua formatter config (2-space indent)
├── .neoconf.json             # neodev/neoconf settings
└── lazy-lock.json            # Pinned plugin versions
```

## Keybindings

| Key | Mode | Action |
|---|---|---|
| `<leader>1-4` | Normal | Harpoon buffer 1-4 |
| `<leader>ha` | Normal | Add file to Harpoon |
| `<leader>hh` | Normal | Harpoon quick menu |
| `<leader>sr` | Normal/Visual | Replace word under cursor / selected text |
| `<leader>w` | Normal | Save file |
| `<leader>q` | Normal | Quit window |
| `<leader>Q` | Normal | Force quit all |
| `<leader>bd` | Normal | Delete buffer |
| `<leader>tw` | Normal | Toggle line wrap |
| `<leader>ts` | Normal | Toggle spell check |
| `<leader>tn` | Normal | Toggle line numbers |
| `<leader>tr` | Normal | Toggle relative numbers |
| `J` / `K` | Visual | Move selection down/up |
| `<C-h/j/k/l>` | Normal | Window navigation |
| `<C-Arrows>` | Normal | Resize windows |
| `]t` / `[t` | Normal | Jump to next/prev TODO comment |

Plus all [LazyVim defaults](https://www.lazyvim.org/keymaps).

## Prerequisites

- **Neovim** >= 0.9.0
- **Git** >= 2.19.0
- **ripgrep** (for search)
- **fd** (for file finding)
- **Nerd Font** (for icons)
- **Optional**: `win32yank.exe` (WSL clipboard support)

## Install

```bash
# Back up existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone
git clone https://github.com/Jay1/dot.nvim.git ~/.config/nvim

# Start Neovim — plugins install automatically
nvim
```

Run `:checkhealth` after first launch to verify everything.

## Autocmds

- **Trim trailing whitespace** on save
- **Markdown conceal** set to level 2 for `.md` / `.mdx` files
- **Tmux status bar** auto-hides when Neovim opens inside tmux, restores on exit

## License

[Apache 2.0](LICENSE)
