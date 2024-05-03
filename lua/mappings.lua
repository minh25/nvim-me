local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })

map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Save in any mode" })
map({ "n", "i", "v" }, "<C-n>", "<cmd> NvimTreeToggle <cr>")
