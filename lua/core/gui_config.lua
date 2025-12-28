if vim.g.neovide then
  -- Шрифт:
  vim.o.guifont = "CommitMono Nerd Font Mono:h14"

  -- Масштаб окна:
  vim.g.neovide_scale_factor = 1.0

  -- Прозрачность окна:
  vim.g.neovide_opacity = 0.8
  vim.g.neovide_normal_opacity = 0.95

  -- Полноэкранный режим:
  vim.g.neovide_fullscreen = true

  -- Анимация курсора:
  vim.g.neovide_cursor_animation_length = 0.150
  vim.g.neovide_cursor_trail_size = 1.0
end
