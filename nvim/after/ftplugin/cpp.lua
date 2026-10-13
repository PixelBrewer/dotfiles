local mappings = {
  { "g", "CMakeGenerate", "Generate" },
  { "b", "CMakeBuild", "Build" },
  { "r", "CMakeRun", "Run" },
  { "c", "CMakeClean", "Clean" },
  { "s", "CMakeSelectBuildTarget", "Select target" },
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set("n", "<leader>p" .. mapping[1], "<cmd>" .. mapping[2] .. "<cr>", {
    buffer = true,
    desc = mapping[3],
    silent = true,
  })
end
