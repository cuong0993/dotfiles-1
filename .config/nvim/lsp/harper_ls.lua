return {
  cmd = { "harper-ls", "--stdio" },
  filetypes = { "markdown", "text", "gitcommit" },
  settings = {
    ["harper-ls"] = {
      linters = {
        SentenceCapitalization = false,
        SpellCheck = false,
      },
    },
  },
}
