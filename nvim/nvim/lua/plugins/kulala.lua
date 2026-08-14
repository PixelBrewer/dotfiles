return {
  {
    "mistweaverco/kulala.nvim",
    ft = { "http", "rest" },
    opts = {},
    keys = {
      {
        "<leader>Rs",
        function()
          require("kulala").run()
        end,
        desc = "Send request",
      },
      {
        "<leader>Ra",
        function()
          require("kulala").run_all()
        end,
        desc = "Send all requests",
      },
    },
  },
}
