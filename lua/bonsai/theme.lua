local M = {}

---@param fg string foreground color
---@param alpha number number between 0 and 1
---@param bg string background color
function M.blend(fg, alpha, bg)
  local function rgb(c)
    c = string.lower(c)
    return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
  end
  alpha = type(alpha) == 'string' and (tonumber(alpha, 16) / 0xff) or alpha
  local b = rgb(bg)
  local f = rgb(fg)
  local blend = function(i)
    local ret = (alpha * f[i] + ((1 - alpha) * b[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end
  return string.format('#%02x%02x%02x', blend(1), blend(2), blend(3))
end

---@param opts table
function M.setup(opts)
  local p = vim.deepcopy(require('bonsai.palette').colors)
  local blend = M.blend

  -- Sidebar / float overrides
  p.bg_sidebar = opts.styles.sidebars == 'transparent' and p.none
    or opts.styles.sidebars == 'dark' and p.bg_dark
    or p.bg
  p.bg_float = opts.styles.floats == 'transparent' and p.none
    or opts.styles.floats == 'dark' and p.bg_dark
    or p.bg

  opts.on_colors(p)

  local c = p
  local hl = require('bonsai.highlights').get(c, opts)

  opts.on_highlights(hl, c)

  -- Resolve style tables
  for _, h in pairs(hl) do
    if type(h) == 'table' and type(h.style) == 'table' then
      for k, v in pairs(h.style) do
        h[k] = v
      end
      h.style = nil
    end
  end

  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'bonsai'

  for group, def in pairs(hl) do
    def = type(def) == 'string' and { link = def } or def
    vim.api.nvim_set_hl(0, group, def)
  end

  if opts.terminal_colors then
    -- stylua: ignore start
    vim.g.terminal_color_0  = c.black
    vim.g.terminal_color_1  = c.red
    vim.g.terminal_color_2  = c.green
    vim.g.terminal_color_3  = c.yellow
    vim.g.terminal_color_4  = c.blue
    vim.g.terminal_color_5  = c.purple1
    vim.g.terminal_color_6  = c.cyan
    vim.g.terminal_color_7  = c.fg_dark
    vim.g.terminal_color_8  = c.terminal_black
    vim.g.terminal_color_9  = c.magenta
    vim.g.terminal_color_10 = c.green2
    vim.g.terminal_color_11 = blend(c.yellow, 0.8, '#ffffff')
    vim.g.terminal_color_12 = c.blue2
    vim.g.terminal_color_13 = c.purple2
    vim.g.terminal_color_14 = c.cyan1
    vim.g.terminal_color_15 = c.fg
    -- stylua: ignore end
  end
end

return M
