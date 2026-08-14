return {
  {
    "nvim-neotest/neotest",
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}

      -- Rust adapter currently causes the fast-event getenv error.
      opts.adapters["rustaceanvim.neotest"] = nil

      return opts
    end,
  },
}
