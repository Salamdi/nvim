return {
  "drybalka/tree-climber.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    local tc = require("tree-climber")
    local keyopts = { noremap = true, silent = true }
    vim.keymap.set({ "n", "v", "o" }, "go", function()
      tc.goto_parent({ highlight = true, skip_comments = true })
    end, keyopts)
    vim.keymap.set({ "n", "v", "o" }, "gi", function()
      tc.goto_child({ hidden = true, skip_comments = true })
    end, keyopts)
    vim.keymap.set({ "n", "v", "o" }, "gn", function()
      tc.goto_next({ highlight = true, skip_comments = true })
    end, keyopts)
    vim.keymap.set({ "n", "v", "o" }, "gp", function()
      tc.goto_prev({ highlight = true, skip_comments = true })
    end, keyopts)
    vim.keymap.set({ "n", "v", "o" }, "<leader>v", tc.select_node, keyopts)
    vim.keymap.set("n", "<c-k>", tc.swap_prev, keyopts)
    vim.keymap.set("n", "<c-j>", tc.swap_next, keyopts)
    vim.keymap.set("n", "<c-h>", tc.highlight_node, keyopts)
  end,
}
