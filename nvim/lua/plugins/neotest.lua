return {
  {
    "nvim-neotest/neotest",
    opts = function(_, opts)
      opts.adapters = {
        require("easy-dotnet.neotest"),
      }
    end,
  },
}
