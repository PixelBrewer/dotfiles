-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "angular-language-server",
        "bash-language-server",
        "circleci-yaml-language-server",
        "clangd",
        "cmake-language-server",
        "csharp-language-server",
        "css-lsp",
        "css-variables-language-server",
        "deno",
        "docker-language-server",
        "emmet-language-server",
        "eslint-lsp",
        "fish-lsp",
        "gh-actions-language-server",
        "gopls",
        "html-lsp",
        "hyprls",
        "java-language-server",
        "json-lsp",
        "lua-language-server",
        "markdown-oxide",
        "mesonlsp",
        "prisma-language-server",
        "pyright",
        "rust-analyzer",
        "some-sass-language-server",
        "sqlls",
        "systemd-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vim-language-server",
        "yaml-language-server",
        "zls",

        -- install formatters and linters
        "clang-format",
        "cmakelang",
        "csharpier",
        "dotenv-linter",
        "eslint_d",
        "goimports",
        "gofumpt",
        "google-java-format",
        "gotests",
        "htmlhint",
        "jsonlint",
        "markdown-toc",
        "markdownlint",
        "pgformatter",
        "prettier",
        "pretty-php",
        "pylint",
        "pyment",
        "rustywind",
        "sqlfmt",
        "stylua",
        "systemdlint",
        "ts-standard",
        "vint",
        "xmlformatter",
        "yamlfix",
        "yamllint",

        -- install debuggers
        "bash-debug-adapter",
        "debugpy",
        "firefox-debug-adapter",
        "go-debug-adapter",
        "gotestsum",
        "java-debug-adapter",
        "java-test",
        "js-debug-adapter",
        "local-lua-debugger-vscode",
        "netcoredbg",
        "php-debug-adapter",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
