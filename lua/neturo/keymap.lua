vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>ek", vim.cmd.Ex)

-- Split
vim.keymap.set("n", "<Leader>wv", ":vsp<CR>", { desc = "Split Vertically" }) -- vertically
vim.keymap.set("n", "<Leader>wh", ":sp<CR>", { desc = "Split Horizontally" }) -- horizontallyal

vim.keymap.set("t", "<leader><E>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<Leader>mh", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<Leader>ml", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<Leader>mj", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<Leader>mk", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Code formatter" })

-- move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- copy without yanking
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- treesitter playground hover
vim.api.nvim_set_keymap(
	"n",
	"<leader>hh",
	':lua require"nvim-treesitter-playground.hl-info".show_hl_captures()<CR>',
	{ noremap = true, silent = true }
)

-- change word under cursor
vim.keymap.set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- source
vim.keymap.set("n", "<leader><enter>", function()
	vim.cmd("so")
end)

-- quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>eq", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
