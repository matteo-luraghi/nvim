# ⚡ Neovim Config

Welcome to my Neovim configuration! This setup is tailored for an efficient and enjoyable development experience. Below you'll find details about the installed plugins, package manager, and keybindings.

## 📚 Table of Contents

- [Package Manager](#package-manager)
- [Plugins](#plugins)
- [Installation](#installation)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## 📦 Package Manager

I use [**Lazy.nvim**](https://github.com/folke/lazy.nvim) as the package manager. Lazy.nvim provides a fast and easy way to manage Neovim plugins with lazy loading capabilities.

## 🔌 Plugins

### 1. **alpha** 🚀
   - A fast and highly customizable startup screen for Neovim.
   - GitHub: [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)

### 2. **autopairs** ✨
   - Automatically inserts and deletes pairs of characters like parentheses, brackets, etc.
   - GitHub: [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)

### 3. **completions** 🤖
   - Provides auto-completion functionality for Neovim.
   - GitHub: [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

### 4. **gitsigns** 🔍
   - Adds git integration to the editor, showing changes, hunks, and allowing for easy staging and diffing.
   - GitHub: [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

### 5. **harpoon** 🎯
   - A plugin to quickly navigate between files and manage your project file.
   - GitHub: [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)

### 6. **mason** 📦
   - A package manager for LSP servers, linters, and formatters.
   - GitHub: [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)

### 7. **mason-lspconfig** 🔧
   - Bridges Mason with Neovim’s built-in LSP client, allowing easy installation and configuration of language servers.
   - GitHub: [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)

### 8. **lualine** 🎨
   - A fast and customizable statusline plugin.
   - GitHub: [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

### 9. **neotree** 🌲
   - A modern and feature-rich file explorer.
   - GitHub: [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)

### 10. **null-ls** 🛠️
   - Provides a way to run linters and formatters that don’t have an LSP server.
   - GitHub: [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)

### 11. **telescope** 🔭
   - A highly extendable fuzzy finder over lists, making searching files, buffers, and other resources easy.
   - GitHub: [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

### 12. **treesitter** 🌳
   - Provides advanced syntax highlighting, code folding, and other text manipulation features through tree-sitter grammars.
   - GitHub: [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## ⚙️ Installation

To install this Neovim configuration:

1. Ensure you have Neovim (v0.7+) installed.
2. Clone this repository into your Neovim configuration directory:
    ```bash
    git clone https://github.com/matteo-luraghi/nvim.git ~/.config/nvim
    ```
3. Install the plugins by opening Neovim and running:
    ```vim
    :Lazy sync
    ```

## 🔧 Configuration

All configuration files are located in the `~/.config/nvim` directory. The main configuration file is `init.lua`, which sources additional configurations from the `lua/` directory.

Feel free to explore and customize the settings to fit your preferences.

## 🤝 Contributing

Contributions are welcome! If you have suggestions or find issues, please open an issue or submit a pull request.

## 📜 License

This configuration is open-sourced under the MIT License. See the [LICENSE](LICENSE) file for more details.
