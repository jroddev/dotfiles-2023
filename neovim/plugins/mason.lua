return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "rust-analyzer",
      -- python
      "mypy",
      "ruff",
      "pyright",
      "black",
      "debugpy",
      -- python
      "ansible-language-server",
      "bash-language-server",
      "dockerfile-language-server",
      -- shell
      "shellcheck",
      "shfmt",
      --- shell
      "terraform-ls",
      "yaml-language-server",
      "prettier",
    }
  }
}
