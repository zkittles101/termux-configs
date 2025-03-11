--require "nvchad.mappings"

local map = vim.keymap.set
-- add yours here

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- toggle terminal
map({ "n", "v" }, "<leader>t", ":ToggleTerm<CR>", { noremap = true })

-- open a new empty tab
map({ "n" }, "<leader>b", ":enew<CR>")
-- close a buffer tab
map({ "n" }, "<leader>x", ":bd<CR>")
-- move between tabs
map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprev<CR>")

-- navigations in toggled term
-- bind control + s to save
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Keymap for toggling spell checking
map({ "n" }, "<Leader>sp", ":set spell!<CR>", { desc = "Toggle spell check", noremap = true, silent = true })

--nabla
map({ "n" }, "<leader>mp", ':lua require("nabla").popup()<CR>', { desc = "Popup Math preview", noremap = true })
map(
	{ "n" },
	"<leader>mv",
	':lua require("nabla").toggle_virt()<CR> ',
	{ desc = "Math preview with virt_lines", noremap = true }
)
-- MarkView
map({ "n" }, "<leader>mc", ":CodeEdit<CR>", { desc = "edit codeblocks inside Markdown" })
map({ "n" }, "<leader>mb", ":CheckboxToggle<CR>", { desc = "toggle checkbox status" })
