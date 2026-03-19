# 🌳 bonsai.nvim

A dark Neovim colorscheme with a teal/forest aesthetic, derived from the [Árvore](https://github.com/your-user/arvore-theme) palette.

<img width="2513" height="1336" alt="image" src="https://github.com/user-attachments/assets/2dc1458a-42f3-4f16-b059-92e07860d2e8" />


## Requirements

- Neovim >= 0.8.0

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "your-user/bonsai.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

## Usage

```vim
colorscheme bonsai
```

## Configuration

Configuration must be set **before** loading the colorscheme.

```lua
require("bonsai").setup({
  transparent = false,       -- enable transparent background
  terminal_colors = true,    -- set terminal colors
  dim_inactive = false,      -- dim inactive windows
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",       -- "dark", "transparent", or "normal"
    floats = "dark",         -- "dark", "transparent", or "normal"
  },
  on_colors = function(colors)
    -- override palette colors
  end,
  on_highlights = function(highlights, colors)
    -- override highlight groups
  end,
})
```

## Supported Plugins

- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
