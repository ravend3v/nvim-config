return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local ts = require("nvim-treesitter")
    ts.setup()
    
    -- Install required language parsers
    ts.install({ "lua", "python", "javascript", "typescript", "json", "html", "css" })

    -- Enable Treesitter syntax highlighting for all filetypes automatically
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}