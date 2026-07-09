return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      --mini notify--
      require("mini.notify").setup({
        content = {
          format = function(notif)
            return notif.msg
          end,
        },
      })
      --mini cmdline completion--
      require("mini.cmdline").setup({})
      --mini surround--
      require("mini.surround").setup({})
      -- mini picker --
      local MiniExtra = require("mini.extra")
      MiniExtra.setup()
      vim.keymap.set("n", "<leader>pk", function() MiniExtra.pickers.keymaps() end, { desc = 'Search keymaps' })
    end, 
  },
}
