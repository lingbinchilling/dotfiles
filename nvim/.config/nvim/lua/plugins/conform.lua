return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },

  opts = {
    formatters_by_ft = {
      lua = { "stylua" },

      bash = { "shfmt" },
      sh = { "shfmt" },

      c = { "clang_format" },
      cpp = { "clang_format" },

      cs = { "csharpier" },

      css = { "prettier" },
      html = { "prettier" },

      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },

      python = { "ruff_format" },

      nix = { "alejandra" },

      qml = { "qmlformat" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },

  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({
          async = true,
          lsp_format = "fallback",
        })
      end,
      desc = "Format buffer",
    },
  },
}
