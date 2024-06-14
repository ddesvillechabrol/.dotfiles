return {
  "nvim-lua/popup.nvim",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  {
    "theprimeagen/harpoon",
    config = function()
      require("harpoon").setup({
        menu = {
          width = vim.api.nvim_win_get_width(0) - 20,
        }
      })
    end,
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 0.8,
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 50,
        },
      })
    end,
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup(
        {
          lsp_file_methods = {
            timeout_ms = 2000,
            autosave_changes = true,
          }
        }
      )
      vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
    end,
  },
}
