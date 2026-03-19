local M = {}

-- Derived from arvore-dark.json
-- stylua: ignore
M.colors = {
  bg           = '#151E23',
  bg_dark      = '#121D24',
  bg_darker    = '#0D1B22',
  bg_float     = '#1A2830',
  bg_highlight = '#1A2A2E',
  bg_popup     = '#1A2830',
  bg_sidebar   = '#121D24',
  bg_statusline = '#0D1B22',
  bg_visual    = '#1C4D47',
  bg_search    = '#4A3A1A',
  border       = '#2A3A42',
  border_highlight = '#40CAB6',
  comment      = '#7C98A1',
  fg           = '#E6FAF7',
  fg_dark      = '#B7C7CB',
  fg_gutter    = '#406A76',
  fg_sidebar   = '#B7C7CB',
  none         = 'NONE',

  -- Core palette
  black        = '#0A1419',
  red          = '#FA5371',
  red1         = '#FA163E',
  green        = '#4EC685',
  green1       = '#3DA169',
  green2       = '#B3E577',
  yellow       = '#FDD351',
  yellow1      = '#FDC200',
  orange       = '#FCA78D',
  orange1      = '#FB673A',
  blue         = '#6394F3',
  blue1        = '#4F81F1',
  blue2        = '#8DAEF6',
  cyan         = '#66DCCE',
  cyan1        = '#8DE5DA',
  cyan2        = '#40CAB6',
  cyan3        = '#ADECE5',
  teal         = '#1C4D47',
  purple       = '#B29CE7',
  purple1      = '#9272DC',
  purple2      = '#C8B9EE',
  magenta      = '#FC98AB',
  pink         = '#FDC3B1',

  -- Semantic
  error        = '#FA5371',
  warning      = '#FDD351',
  info         = '#6394F3',
  hint         = '#4EC685',
  todo         = '#40CAB6',

  -- Terminal
  terminal_black = '#7C98A1',

  -- Diff
  diff = {
    add    = '#1E2E24',
    delete = '#2E1A1E',
    change = '#1A2230',
    text   = '#1E2840',
  },

  -- Git
  git = {
    add    = '#4EC685',
    change = '#6394F3',
    delete = '#FA5371',
    ignore = '#406A76',
  },

  -- Rainbow brackets
  rainbow = { '#66DCCE', '#6394F3', '#B29CE7', '#FCA78D', '#B3E577', '#FDD351' },
}

return M
