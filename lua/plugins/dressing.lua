return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
  opts = {
    input = {
      enabled = true,
      default_prompt = "Input:",
      prompt_align = "left",
      insert_only = true,
      start_in_insert = true,
      border = "rounded",
      relative = "cursor",
      prefer_width = 40,
      width = nil,
      max_width = { 140, 0.9 },
      min_width = { 20, 0.2 },
      win_options = {
        winblend = 0,
        wrap = false,
      },
    },
    select = {
      enabled = true,
      backend = { "telescope", "builtin", "fzf_lua", "nui" },
      trim_prompt = true,
      telescope = require("telescope.themes").get_dropdown({
        layout_config = {
          width = 0.6,
          height = 0.4,
        },
      }),
      builtin = {
        border = "rounded",
        relative = "editor",
        win_options = {
          winblend = 0,
        },
      },
    },
  },
}