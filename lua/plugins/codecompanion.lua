return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- for the action palette UI
    },
    config = function()
      require("codecompanion").setup({
        -- Choose your default adapter for chat and inline modifications
        strategies = {
          chat = {
            adapter = "gemini", -- "anthropic", "openai", "gemini", "copilot", or "ollama"
          },
          inline = {
            adapter = "anthropic",
          },
        },
        display = {
          action_palette = {
            provider = "telescope", -- use Telescope to browse prompts and actions
          },
        },
      })

      -- Keymaps
      local map = vim.keymap.set
      map({ "n", "v" }, "<leader>aa", "<cmd>CodeCompanionChat Toggle<CR>", { desc = "AI Chat Toggle" })
      map({ "n", "v" }, "<leader>ap", "<cmd>CodeCompanionActions<CR>", { desc = "AI Action Palette" })
      map({ "n", "v" }, "<leader>ai", "<cmd>CodeCompanion<CR>", { desc = "AI Inline Prompt" })

      -- Visual mode quick actions
      map("v", "ga", "<cmd>CodeCompanionChat Add<CR>", { desc = "Add Selection to AI Chat" })
    end,
  },
  -- Optional: renders formatted Markdown, code blocks, and checkboxes in chat buffers
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" },
  },
}
