return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      zig = { "zigfmt" },
      python = { "isort", "black" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      zigfmt = {
        command = "/home/krisz-pc/zig-lang/zig-x86_64-linux-0.16.0/zig",
      },
    },
  },
}
