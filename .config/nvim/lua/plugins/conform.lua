return {
  "stevearc/conform.nvim",
  enabled = true,
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  init = function()
    vim.g.autoformat = true
  end,
  opts = {
    default_format_opts = {
      lsp_fallback = true,
      timeout_ms = 2000,
    },
    format_on_save = {},
    --
    formatters_by_ft = {
      ["terraform-vars"] = { "terraform_fmt" },
      bash = { "shfmt" },
      dart = { "dart_format" },
      html = { "oxfmt", lsp_format = "fallback" },
      javascript = { "oxfmt", lsp_format = "fallback" },
      json = { "oxfmt", stop_on_first = true },
      jsonc = { "oxfmt", stop_on_first = true },
      kotlin = { "ktfmt" },
      kts = { "ktfmt" },
      lua = { "stylua" },
      nix = { "nixfmt" },
      python = { "ruff_organize_imports", "ruff_format" },
      sh = { "shfmt" },
      sql = { "sqlfluff" },
      terraform = { "terraform_fmt" },
      tf = { "terraform_fmt" },
      toml = { "oxfmt" },
      typescript = { "oxfmt", lsp_format = "fallback" },
      typescriptreact = { "oxfmt", lsp_format = "fallback" },
      yaml = { "oxfmt" },
      yml = { "oxfmt" },
    },
    formatters = {
      golines = {
        prepend_args = { "--max-len=120", "--base-formatter=gofumpt" },
      },
    },
  },
}
