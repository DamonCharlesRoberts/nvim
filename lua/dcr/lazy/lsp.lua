return {
    {
        "hrsh7th/nvim-cmp"
        , dependencies = {
            "hrsh7th/cmp-nvim-lsp"
            , "L3MON4D3/LuaSnip"
            , "saadparwaiz1/cmp_luasnip"
            , "kdheepak/cmp-latex-symbols"
        }
        , config = function()
            local has_words_before = function()
            unpack = unpack or table.unpack
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end

        local cmp = require('cmp')
        local luasnip = require('luasnip')

        cmp.setup({
            snippet = {
                expand = function(args)
                luasnip.lsp_expand(args.body)
            end
            }
            , completion = {
                autocomplete = false
            }
            , mapping = cmp.mapping.preset.insert ({
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<s-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" })
                , ["<c-e>"] = cmp.mapping.abort()
                , ["<CR>"] = cmp.mapping.confirm({ select=true }),
            })
            , sources = {
                { name = "nvim_lsp" }
                , { name = "luasnip" }
                , { 
                    name = "latex_symbols" 
                    , option = {
                            strategy = 0
                        }
                }
            }
        })
        end
    }
    , {
        "neovim/nvim-lspconfig"
        , dependencies = {
            "williamboman/mason.nvim"
            , "williamboman/mason-lspconfig.nvim"
        }
        , config = function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
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
            local lspconfig = require("lspconfig")
            lspconfig.pyright.setup({
                capabilities = capabilities
                , settings = {
                    pyright = {
                        -- Using Ruff's import organizer
                        disableOrganizeImports = true,
                    }
                    , python = {
                        analysis = {
                        -- Ignore all files for analysis to exclusively use Ruff for linting
                            ignore = { "*" }
                        }
                    }
                }
            })
            lspconfig.ruff.setup({})
        end
    }
}
