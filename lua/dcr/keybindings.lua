-- Telescope keybindings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fc", builtin.git_commits, { desc = "Git commits" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope Help" })

-- Console keybindings
vim.keymap.set("n", "<leader>cn", "<cmd>:vsplit | terminal<cr>", { desc = "Open new terminal" })

