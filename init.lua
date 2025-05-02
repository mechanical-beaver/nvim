--TODO: сделать 2 отдельные строки нумерации (относительную и абсолютную)
--TODO: заменить conform на null-ls
--TODO: добавить автозакрытие <> скобок
--TODO: изменить стиль bufflibe
--TODO: сделать более удобное комментирование
--TODO: Dashbord
--TODO: Witch Key


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
--   require("plugins.UI.statuscol")

------------------Other
require("plugins.neo-tree")
require("plugins.comment")
require("plugins.term")
require("plugins.buffers")
require("plugins.conform")
