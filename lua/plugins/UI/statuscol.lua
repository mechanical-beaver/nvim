--require("statuscol").setup({
--    relculright = true,
--    segments = {
--        {
--            text = function(args)
--                return string.format("%3d ", args.lnum)
--            end,
--            condition = { true },
--        },
--        {
--            text = function(args)
--                return string.format("%3d ", math.abs(args.relnum))
--            end,
--            condition = { true },
--        },
--    }
--})



require("statuscol").setup({
  relculright = false,
  segments = {
    {
      text = function(args)
        return string.format("%3d ", args.lnum) -- Абсолютный номер
      end,
      condition = { true },
    },
    {
      text = function(args)
        -- Отображать относительные номера для всех строк, кроме текущей
        return args.relnum ~= 0 and string.format("%3d ", math.abs(args.relnum)) or "    "
      end,
      condition = { true },
    },
  },
})
