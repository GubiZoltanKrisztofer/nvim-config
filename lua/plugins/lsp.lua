local capabilities = require("blink-cmp").get_lsp_capabilities()
local zig_bin = vim.fn.exepath("zig")

return {
  "neovim/nvim-lspconfig",
  opts = { diagnostics = { virtual_text = false } },
  config = function()
    vim.lsp.config("zls", {
      cmd = { "zls" },
      capabilities = capabilities,
      settings = { zls = { zig_exe_path = "/home/krisz-pc/zig-lang/zig-x86_64-linux-0.16.0/zig" } },
      enable_autofix = true,
      enable_inlay_hints = true,
      filetypes = { "zig", "zir" },
      root_markers = { "build.zig", "zls.json", ".git" },
    })
    vim.lsp.enable("zls")
    vim.lsp.enable("pyright")
  end,
}
