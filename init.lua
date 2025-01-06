local set = vim.keymap.set
set("i", "<c-n>", "<nop>")
set("i", "<c-p>", "<nop>")
-- if vim.fn.has('nvim-0.11') == 1 then
--   -- Ensure that forced and not configurable `<Tab>` and `<S-Tab>`
--   -- buffer-local mappings don't override already present ones
--   local expand_orig = vim.snippet.expand
--   vim.snippet.expand = function(...)
--     local tab_map = vim.fn.maparg('<Tab>', 'i', false, true)
--     local stab_map = vim.fn.maparg('<S-Tab>', 'i', false, true)
--     expand_orig(...)
--     vim.schedule(function()
--       tab_map.buffer, stab_map.buffer = 1, 1
--       -- Override temporarily forced buffer-local mappings
--       -- vim.fn.mapset('i', false, tab_map)
--       -- vim.fn.mapset('i', false, stab_map)
--       vim.fn.mapset(true)
--     end)
--   end
-- end
require("config.opts")
require("config.lazy")
require("config.keybinds")
require("custom_lua.luasn")
require("custom_lua.py_snip")
