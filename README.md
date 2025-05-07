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
# backup your neovim config file
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

## Mason lsp

1. rust

> ⚠️ On MacOS need brew install rust-analyzer


##  Customization

You can customize this configuration by creating the custom module. You can choose either two ways:

+ Create ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/lua/custom.lua file.
+ Create module ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/lua/custom/ if your custom configuration is too long, and you want to separate it into multiple files.

Checkout the sample custom file for the starting point. The logic is taken from CyberNvim. There are a number of defined sections in the config:

1. M.setup_sources is used to add extra sources to connect to Null-ls - you can find a list of sources here. The parameter b is just short for null_ls.builtins.
2. M.ensure_installed is used to add extra Treesitter highlighter.
3. M.plugins is where you will add your own plugin definitions.
4. M.configs is the most important section of your own configuration. This is where you can define any autocommands, require any files, or otherwise completely port your current configuration.
5. M.formatting_servers is used to setup auto formatting rules. You need to select the language server that will provide autoformatting capabilities

## TODO
