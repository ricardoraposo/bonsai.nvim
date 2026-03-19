local M = {}

M.defaults = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = 'dark',
    floats = 'dark',
  },
  dim_inactive = false,
  on_colors = function(_colors) end,
  on_highlights = function(_highlights, _colors) end,
}

M.options = nil

function M.setup(opts)
  M.options = vim.tbl_deep_extend('force', {}, M.defaults, opts or {})
end

function M.extend(opts)
  return opts and vim.tbl_deep_extend('force', {}, M.options or M.defaults, opts) or (M.options or M.defaults)
end

function M.load(opts)
  opts = M.extend(opts)
  require('bonsai.theme').setup(opts)
end

return M
