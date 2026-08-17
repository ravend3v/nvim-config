return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        separator_style = "thin", -- "slant", "padded_slant", "thick", or "thin"
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        show_buffer_close_icons = true,
        show_close_icon = false,
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    })

    -- Buffer navigation keymaps
    local map = vim.keymap.set
    map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer tab" })
    map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer tab" })
    map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
    map("n", "<leader>bp", "<cmd>BufferLinePick<CR>", { desc = "Pick buffer tab" })
  end,
}
