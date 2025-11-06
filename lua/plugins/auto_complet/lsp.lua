return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local on_attach = function()
            end

            local lsp_flags = {}

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                filetypes = { 'lua' },
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
                on_attach = on_attach,
                -- handlers = {
                --     ["textDocument/publishDiagnostics"] = function() end
                -- },
                -- on_attach = function(client, bufnr)
                --     client.handlers["textDocument/publishDiagnostics"] = function() end
                -- end,
                filetypes = { "h", "c", "cpp", "cc", "objc", "objcpp" },
                flags = lsp_flags,
                cmd = {
                    "clangd",
                    "--clang-tidy=false"
                },
                single_file_support = true,
                root_dir = lspconfig.util.root_pattern(
                    ".clangd",
                    ".clang-tidy",
                    ".clang-format",
                    "compile_commands.json",
                    "platformio.ini",
                    "compile_flags.txt",
                    "configure.ac",
                    ".git"
                ),
            })

            lspconfig.html.setup(
                {
                    capabilities = capabilities,
                    on_attach = on_attach,
                    filetypes = { "html", "htmldjango" },
                }
            )

            lspconfig.pyright.setup({})

            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
                    -- local opts = { buffer = ev.buf }
                end,
            })
        end,
    },
}
