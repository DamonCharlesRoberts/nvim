return {
    "neovim/nvim-lspconfig"
    , dependencies = {
        "williamboman/mason.nvim"
        , "williamboman/mason-lspconfig.nvim"
    }
    , config = function()
        require("mason").setup({
            ensure_installed = {
                "black"
            }
        })
        require("mason-lspconfig").setup({
            ensure_installed = {
                "pyright"
            }
        })
    end
}
