--TODO: сделать 2 отдельные строки нумерации (относительную и абсолютную)
--TODO: сделать более удобное комментирование
--TODO: Dashbord (Snacks)
--TODO: PlatformIO
--TODO: Codeium
--TODO: marks
--TODO: NeoDev

--Base
require("core.lazy")
require("core.config")
require("core.colors")

--Mapping
require("core.Mapping.base")
require("core.Mapping.plugins")
require("core.Mapping.aliases")

--Plugins
------------------Auto complete
require("plugins.auto_complet.lsp")
require("plugins.auto_complet.cmp")
require("plugins.auto_complet.mason")

------------------UI
require("plugins.UI.treesitter")
require("plugins.UI.modicator")
require("plugins.UI.lualine")
require("plugins.UI.noice")
require("plugins.UI.buffers")

------------------Text Edit
require("plugins.text-edit.comment")
require("plugins.text-edit.autopairs")
require("plugins.text-edit.none-ls")

------------------Window
require("plugins.window.term")
require("plugins.window.neo-tree")
