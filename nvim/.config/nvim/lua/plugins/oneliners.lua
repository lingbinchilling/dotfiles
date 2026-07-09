return {
  { "tpope/vim-fugitive" },
  { "ojroques/nvim-osc52" },
  {
    "catgoose/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
}
