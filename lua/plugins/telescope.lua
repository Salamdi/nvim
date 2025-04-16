return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function()
    --   local builtin = require("telescope.builtin")
    --   vim.keymap.set("n", "<leader>ff", function()
    --     builtin.find_files({ hidden = true })
    --   end, {})
    --   vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    --   vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    --   vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    --   vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})
    -- end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        defaults = {
          layout_config = {
            vertical = { width = 0.7 }
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
