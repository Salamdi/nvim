return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  keys = {
    -- { "<leader>tt", "<cmd>Neotree toggle reveal<CR>", mode = "n" },
    -- { "<leader>tt", "<cmd>Neotree toggle float reveal<CR>:set nu rnu<CR>", mode = "n" },
    { "<leader>gt", "<cmd>Neotree float git_status<CR>:set nu rnu<CR>",    mode = "n" },
  },
  config = function()
    require("neo-tree").setup({})
  end,
}
