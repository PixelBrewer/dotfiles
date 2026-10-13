-- Go project keybindings
-- Loaded automatically when editing Go files.

local function run_go(command)
  return function()
    vim.cmd("write")

    Snacks.terminal({ "sh", "-c", command .. '; printf "\\nPress Enter to close..."; read _' }, {
      cwd = vim.fn.getcwd(),
      win = {
        position = "bottom",
      },
    })
  end
end

local mappings = {
  { "b", "go build ./...", "Build" },
  { "r", "go run .", "Run" },
  { "c", "go clean", "Clean" },
  { "g", "go generate ./...", "Generate" },
  { "m", "go mod tidy", "Tidy modules" },
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set("n", "<leader>p" .. mapping[1], run_go(mapping[2]), {
    buffer = true,
    desc = mapping[3],
    silent = true,
  })
end
