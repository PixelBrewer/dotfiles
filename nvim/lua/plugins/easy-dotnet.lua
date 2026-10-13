return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    ft = { "cs" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/snacks.nvim",
    },
    opts = {
      managed_terminal = {
        auto_hide = false,
      },
      test_runner = {
        neotest_integration = true,
      },
    },
  },
}
