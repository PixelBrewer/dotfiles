return {
  {
    "Civitasv/cmake-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      cmake_command = "cmake",
      cmake_build_directory = "build",
      cmake_generate_options = {
        "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON",
      },
      cmake_executor = {
        name = "terminal",
        opts = {},
      },
      cmake_runner = {
        name = "terminal",
        opts = {},
      },
    },
  },
}
