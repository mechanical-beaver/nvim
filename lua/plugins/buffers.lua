require("bufferline").setup({
    options = {
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = "slant",

        custom_filter = function(buf_number, buf_numbers)
            local name = vim.fn.bufname(buf_number)
            -- Исключить буферы yazy
            if name:match("^yazy://") then
                return false
            end
            return true
        end,
    },
})
