local wk = require("which-key")
wk.register({
    ["<leader>ff"] = { "<cmd> Telescope find_files<cr>", "[f]ind [f]ile" }
    , ["<leader>fg"] = { "<cmd> Telescope live_grep<cr>", "[f]ind [g]rep" }
    , ["<leader>fb"] = { "<cmd> Telescope buffers<cr>", "[f]ind [b]uffers" }
    , ["<leader>fc"] = { "<cmd> Telescope git_commits<cr>", "[f]ind [c]ommit" }
    , ["<leader>fh"] = { "<cmd> Telescope help_tags<cr>", "[f]ind [h]elp" }
}
, { prefix = "<leader>" })
