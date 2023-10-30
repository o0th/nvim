return {
  plugins = {
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
  },
  colorscheme = "dracula",
  options = {
    opt = {
      relativenumber = false,
      swapfile = false,
      scrolloff = 12,
    }
  },
  mappings = {
    n = {
      ["<S-h>"] = { "<cmd>bprev<cr>", desc = "previous tab" },
      ["<S-l>"] = { "<cmd>bnext<cr>", desc = "next tab" },
    },
  },
}

