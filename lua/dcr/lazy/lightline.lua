return {
    "itchyny/lightline.vim"
    , config = function()
        vim.g["lightline"] = {
            colorscheme = "wombat"
            , active = { left = {{ "mode", "pase" }, { "readonly", "filename", "modified" }} }
        }
    end
}
