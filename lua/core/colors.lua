vim.cmd("colorscheme oxocarbon")
vim.o.background = "dark"

local kinds = {
    "Text", "Method", "Function", "Constructor", "Field", "Variable",
    "Class", "Interface", "Module", "Property", "Unit", "Value",
    "Enum", "Keyword", "Snippet", "Color", "File", "Reference",
    "Folder", "EnumMember", "Constant", "Struct", "Event", "Operator",
    "TypeParameter"
}

for _, kind in ipairs(kinds) do
    local group = "CmpItemKind" .. kind
    vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end
