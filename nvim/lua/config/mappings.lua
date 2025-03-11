local map = vim.keymap.set
-- add yours here

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- toggle terminal
map({ "i", "n", "v" }, "<C-t>", ":<C-\\><C-n>:ToggleTerm<CR>", { desc = "Toggle Terminal Window", noremap = true })
-- toggle file picker
map({ "n", "v", "t" }, "<leader>v", "<C-\\><C-n>:NnnPicker<CR>", { desc = "Toggle File Picker" })
-- exit terminal modes
map({ "t", "n" }, "<C-Space>", "<C-\\><C-n>")

-- open a new empty tab
map({ "n" }, "<leader>b", "<CMD>enew<CR>")
-- close a buffer tab
map({ "n" }, "<leader>x", "<CMD>bd<CR>")
-- move between tabs
map("n", "<Tab>", "<CMD>bnext<CR>")
map("n", "<S-Tab>", "<CMD>bprev<CR>")

-- navigations in toggled term

-- bind control + s to save
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Keymap for toggling spell checking
map({ "n" }, "<Leader>sp", "<CMD>set spell!<CR>", { desc = "Toggle spell check", noremap = true, silent = true })

--nabla
map({ "n" }, "<leader>mp", '<CMD>lua require("nabla").popup()<CR>', { desc = "Popup Math preview", noremap = true })

-- nabla virt lines support
-- map(
--	{ "n" },
--	"<leader>mv",
--	'<CMD>lua require("nabla").toggle_virt()<CR> ',
--	{ desc = "Math preview with virt_lines", noremap = true }
--)
-- MarkView
-- map({ "n" }, "<leader>mc", ":CodeEdit<CR>", { desc = "edit codeblocks inside Markdown" })

map({ "n" }, "<leader>mb", "<CMD>CheckboxToggle<CR>", { desc = "toggle checkbox status" })
