return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {
    flavour = "mocha", -- "latte", "frappe", "macchiato", "mocha"
    integrations = {
      neotree = true,
      treesitter = true,
      telescope = { enabled = true },
      bufferline = true,
      which_key = true,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
