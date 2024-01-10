return {
  { "Mofiqul/dracula.nvim" },
  {
    "github/copilot.vim",
    event = "VeryLazy",
    autoStart = true,
    config = function()
      vim.g.copilot_assume_mapped = true
      vim.api.nvim_set_keymap("i", "<S-CR>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },
}
