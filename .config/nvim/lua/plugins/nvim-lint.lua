return {
  {
    "mfussenegger/nvim-lint",
    event = { "BufWritePost", "BufReadPost" },
    config = function()
      require("lint").linters_by_ft = {
        terraform = { "terraform_validate", "tflint" },
        tf = { "terraform_validate", "tflint" },
        ["terraform-vars"] = { "terraform_validate", "tfsec", "tflint" },
        dockerfile = { "hadolint" },
        go = { "golangcilint" },
        sh = { "shellcheck" },
        bash = { "shellcheck" },
        nix = { "nix" },
        python = { "ruff" },
        yaml = { "yamllint" },
        markdown = { "rumdl" },
      }
    end,
  },
}
