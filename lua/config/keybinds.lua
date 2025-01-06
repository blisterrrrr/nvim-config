
local set = vim.keymap.set
local opts = { noremap = true, silent = true }

--set("n", "<leader>e", "<CMD>Neotree filesystem reveal left toggle<CR>", opts)
set("n", "<leader>e", "<CMD>lua MiniFiles.open()<CR>", opts)
set("n", "x", '\"_x', opts)

-- Movement
set("n", "<c-h>", "<c-w>h", opts)
set("n", "<c-j>", "<c-w>j", opts)
set("n", "<c-k>", "<c-w>k", opts)
set("n", "<c-l>", "<c-w>l", opts)
set("t", "<c-h>", "<c-\\><c-n><c-w>h", opts)

set("v", "<", "< gv", opts)
set("v", ">", "> gv", opts)

set({"n", "v"}, "[b", "<CMD>BufferLineCyclePrev<CR>", opts)
set({"n", "v"}, "]b", "<CMD>BufferLineCycleNext<CR>", opts)
