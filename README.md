# NvimConfig

This is my Neovim configuration that uses Lua as its main language. It includes a custom set of mappings, plugins, and settings to enhance the Neovim experience.

## Folder Structure

- `init.lua`: the main configuration file that loads the rest of the configuration files.
- `lua/magenz/` directory: contains the following files:
  - `init.lua`: initializes the `magenz` namespace and loads the other files.
  - `packer.lua`: sets up the Packer plugin manager and defines the plugins used.
  - `remap.lua`: defines custom key mappings and leader keys.
  - `set.lua`: sets various Neovim options and settings.
- `after/plugin/` directory: contains the following files:
  - `colors.lua`: sets up custom color schemes for the editor.
  - `telescope.lua`: configures the Telescope plugin for fuzzy searching and file browsing.
  - `treesitter.lua`: configures the Treesitter plugin for advanced syntax highlighting and code analysis.
  - `nvim-tree.lua`: configures the Nvim-Tree plugin for file management and navigation.

## Installation

1. Clone this repository to your local machine.
2. Run the following command in Neovim to install the Packer plugin manager:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

3. Open Neovim and run the `:PackerSync` command to install the plugins defined in the `packer.lua` file.

## Usage

To use this configuration, clone the repository to your local machine and copy the contents of the `nvim` folder to your Neovim configuration directory (`~/.config/nvim`).

Once you have installed the required plugins and copied the configuration files, you can open Neovim and start using the new configuration.

## License

This project is licensed under the [MIT license](https://opensource.org/licenses/MIT). See the `LICENSE` file for more information.