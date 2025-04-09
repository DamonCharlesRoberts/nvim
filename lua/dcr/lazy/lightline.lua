return {
    "itchyny/lightline.vim"
    , config = function()
        vim.g["lightline"] = {
            colorscheme = "moonfly"
            , active = { left = {{ "mode", "pase" }, { "readonly", "filename", "modified" }} }
        }
    end
}
