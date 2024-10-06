return {
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function()
      -- local icons = require('config.icons')
      require("gitsigns").setup({})
    end,
  },
}
