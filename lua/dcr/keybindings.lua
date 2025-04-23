-- Telescope keybindings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files", noremap=true, silent=true })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep", noremap=true, silent=true })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers", noremap=true, silent=true })
vim.keymap.set("n", "<leader>fc", builtin.git_commits, { desc = "Git commits", noremap=true, silent=true })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope Help", noremap=true, silent=true })

-- Console keybindings
vim.keymap.set("n", "<leader>cn", "<cmd>:vsplit | terminal<cr>", { desc = "Open new terminal", noremap=true, silent=true })

-- Navigation keybindings
vim.keymap.set("n", "<C-j>", "<C-W>j", { desc = "Move to lower window", noremap=true, silent=true })
vim.keymap.set("n", "<C-k>", "<C-W>k", { desc = "Move to upper window", noremap=true, silent=true })
vim.keymap.set("n", "<C-h>", "<C-W>h", { desc = "Move to left window", noremap=true, silent=true })
vim.keymap.set("n", "<C-l>", "<C-W>l", { desc = "Move to right window", noremap=true, silent=true })

-- Insert mode in terminal.
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit out of insert mode in terminal", noremap=true, silent=true })
