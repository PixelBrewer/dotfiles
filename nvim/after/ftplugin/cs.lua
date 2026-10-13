local mappings = {
  { "b", "Dotnet build", "Build" },
  { "r", "Dotnet run", "Run" },
  { "d", "Dotnet debug", "Debug" },
  { "c", "Dotnet clean", "Clean" },
  { "w", "Dotnet watch", "Watch" },
  { "p", "Dotnet run profile", "Run profile" },
  { "e", "Dotnet diagnostic errors", "Build errors" },
  { "x", "Dotnet restore", "Restore" },
  { "m", "Dotnet", ".NET commands" },
  { "a", "Dotnet add package", "Add NuGet package" },
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set("n", "<leader>p" .. mapping[1], "<cmd>" .. mapping[2] .. "<cr>", {
    buffer = true,
    desc = mapping[3],
    silent = true,
  })
end
