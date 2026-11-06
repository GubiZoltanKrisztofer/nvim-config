local capabilities = require("blink-cmp").get_lsp_capabilities()
--local zig_bin = vim.fn.exepath("zig")
-- don't show parse errors in a separate window
local vim = vim
vim.g.zig_fmt_parse_errors = 0
-- disable format-on-save from `ziglang/zig.vim`
vim.g.zig_fmt_autosave = 0

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false, -- Enabled so errors show up inline
        signs = true,
        update_in_insert = false,
      },
    },
    config = function()
      vim.lsp.config("zls", {
        cmd = { "zls" },
        capabilities = capabilities,
        filetypes = { "zig", "zir" },
        root_markers = { "build.zig", "zls.json", ".git" },
        settings = {
          zls = {
            enable_build_on_save = true,
            enable_ast_check_diagnostics = true,
          },
        },
      })
      vim.lsp.enable("zls")
      vim.lsp.enable("pyright")
    end,
  },
  {
    "https://codeberg.org/ziglang/zig.vim",
  },
}
