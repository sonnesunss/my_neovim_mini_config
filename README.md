# Neovim config file

1. installation
2. file structure
3. mapping key
4. custom neovim
5. Plugins
6. Lsp
7. theme

## 1. Installation

- Requirements:
  - Install [neovim >= 0.8.0](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-package), or you can [build it](https://github.com/neovim/neovim/wiki/Building-Neovim#) yourself.
  - git >= 2.19.0 (for partial clones support)
  - [fd](https://github.com/sharkdp/fd) and [ripgrep](https://github.com/BurntSushi/ripgrep).
  - I recommend using a [nerdfonts](https://www.nerdfonts.com/font-downloads) (optional)
- Backup your current neovim config, if necessary:

```shell
# 备份你的neovim配置文件
mv ~/.config/nvim ~/.config/nvim.bak
```

- Neovim's configurations are located under the following paths, depending on your OS:

| OS                   | PATH                                      |
| :------------------- | :---------------------------------------- |
| Linux, MacOS         | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)        | `%localappdata%\nvim\`                    |
| Windows (powershell) | `$env:LOCALAPPDATA\nvim\`                 |

+ macos/linux

```shell
git clone https://github.com/sonnesunss/my_neovim_mini_config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

- Restart Neovim and enjoy it.

## 2. File structure

The files under config will be automatically loaded at the appropriate time, so you don't need to require those files manually.

```shell
tree ~/.config/nvim
├── init.lua
├── lazy-lock.json
└── lua
    ├── autocmds.lua
    ├── custom.lua
    ├── mappings.lua
    ├── options.lua
    ├── plugins
    │   ├── configs
    │   │   ├── cmp.lua
    │   │   ├── gitsigns.lua
    │   │   ├── lspconfig.lua
    │   │   ├── lualine.lua
    │   │   ├── luasnip.lua
    │   │   ├── mason.lua
    │   │   ├── null-ls.lua
    │   │   ├── telescope.lua
    │   │   ├── tree.lua
    │   │   └── treesitter.lua
    │   └── init.lua
    └── sample_custom.lua
```

## TODO
