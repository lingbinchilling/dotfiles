return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "neovim-treesitter/treesitter-parser-registry",
  },
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup()

    require("nvim-treesitter").install({
      "bash",
      "c",
      "cpp",
      "c_sharp",
      "css",
      "fish",
      "html",
      "java",
      "javascript",
      "lua",
      "python",
      "qmldir",
      "qmljs",
    })
        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
                if lang and pcall(vim.treesitter.start, args.buf, lang) then
                    vim.bo[args.buf].indentexpr =
                    "v:lua.require'nvim-treesitter'.indentexpr()"
                end

            vim.bo.indentexpr =
                "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
            end,
        })
    end 
}
