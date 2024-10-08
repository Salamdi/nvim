return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "theHamsta/nvim-dap-virtual-text",
    "rcarriga/nvim-dap-ui",
    "nvim-telescope/telescope-dap.nvim",
    "leoluz/nvim-dap-go",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")
    dapui.setup()
    require("dap-go").setup()
    require("nvim-dap-virtual-text").setup()
    require("telescope").load_extension("dap")
    vim.keymap.set("n", "<leader>dui", function()
      dapui.toggle()
    end)
    vim.keymap.set("n", "<Leader>db", function()
      dap.toggle_breakpoint()
    end)
    vim.keymap.set("n", "<Leader>dc", function()
      dap.continue()
    end)
    vim.keymap.set("n", "<Leader>do", function()
      dap.step_over()
    end)
  end,
}
