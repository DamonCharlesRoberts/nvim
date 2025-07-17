return {
	"itchyny/lightline.vim",
	dependencies = "itchyny/vim-gitbranch",
	config = function()
		vim.g["lightline"] = {
			colorscheme = "wombat",
			active = {
				left = {
					{ "mode", "paste", "gitbranch" },
					{ "readonly", "filename", "lineinfo", "percent", "modified" },
				},
				right = { { "fileencoding", "filetype" } },
			},
			component_function = {
				gitbranch = "gitbranch#name",
			},
		}
	end,
}
