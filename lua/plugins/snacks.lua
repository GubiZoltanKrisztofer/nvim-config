return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    -- Turn off just the explorer module
    explorer = { enabled = false },

    -- Keep whatever other modules you like enabled (e.g., indent, notifier, etc.)
    notifier = { enabled = true },
    -- statuscolumn = { enabled = true },
  },
  keys = {
    -- Remove or change the <leader>e keymap pointing to Snacks.explorer()
    { "<leader>e", false },
  },
}
