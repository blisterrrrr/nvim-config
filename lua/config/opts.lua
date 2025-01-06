local opt = vim.opt

--vim.diagnostic.config({ virtual_text = true })
vim.g.mapleader = " "
vim.g.rust_recommended_style = 0
vim.opt.mouse = 'a'
opt.modifiable = true
opt.swapfile = false
opt.number = true           -- Show line number
local wow = vim.wo
wow.relativenumber = true
--opt.showmatch = true        -- Highlight matching parenthesis
opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
--opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.termguicolors = true    -- Enable 24-bit RGB colors
opt.laststatus=3            -- Set global statusline
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 2          -- Shift 4 spaces when tab
opt.tabstop = 2             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines
vim.opt.autoindent = true
-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
--opt.hidden = true           -- Enable background buffers
--opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
--opt.synmaxcol = 240         -- Max column for syntax highlight
--opt.updatetime = 250        -- ms to wait foldmethodr trigger an event

local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   --"matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "tutor",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
