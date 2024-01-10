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
    -- Default plugins configurations
    {
      "goolord/alpha-nvim",
      opts = function (_, opts)
        opts.section.header.val = {
          " ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡶⠶⠛⠛⠛⠛⠻⠶⢶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
          " ⠀⠀⠀⠀⠀⠀⣠⡾⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠳⣦⡀⠀⠀⠀⠀⠀⠀ ",
          " ⠀⠀⠀⠀⢀⡾⠋⢠⠀⠀⠀⠀⠀⠀⣠⠄⠀⠀⠀⠀⠀⠀⠈⠻⣦⠀⠀⠀⠀⠀ ",
          " ⠀⠀⠀⢠⡿⠁⠀⣸⡦⠾⢦⣤⡴⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀ ",
          " ⣾⠛⠳⣾⠁⠀⠀⠿⠃⠀⢸⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠀⠀⠀ ",
          " ⢻⡀⢸⡇⠀⡆⠀⠀⠀⠀⣀⣤⠴⢶⡆⠀⠀⠀⢀⣤⠖⠛⠉⠉⡷⠀⢿⡀⠀⠀ ",
          " ⠈⢷⣼⠃⠀⣿⠒⣶⢻⡏⣿⡀⠀⣿⡇⠀⠀⠀⠋⠀⠀⠀⢀⡼⠃⠀⢸⡇⠀⠀ ",
          " ⠀⠈⣿⠀⠀⢹⡀⣿⣾⠿⠛⢷⣸⢣⡇⠀⠀⠀⠀⠀⢀⣴⠟⠁⠀⠀⢸⡇⠀⠀ ",
          " ⠀⠀⢹⡆⠀⢸⣿⣿⠁⠀⠀⠀⠁⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀ ",
          " ⠀⠀⠸⣇⠀⠈⢿⡇⠀⠀⠀⠀⠀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠓⠒⣶ ",
          " ⠀⠀⠀⢻⡄⠀⠘⣧⠀⠀⠀⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠋ ",
          " ⠀⠀⠀⠀⠻⣆⠀⠈⠳⢦⣤⠾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡴⠛⠀⠀ ",
          " ⠀⠀⠀⠀⠀⠈⠳⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⠶⠛⠁⠀⠀⠀⠀ ",
          " ⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⠶⢦⣤⣤⣤⣤⣤⡴⠶⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀ ",
        }
      end,
    },
    {
      "rebelot/heirline.nvim",
      opts = function(_, opts)
        local status = require("astronvim.utils.status")
        opts.statusline = {
          hl = { fg = "fg", bg = "bg" },
          status.component.mode(),
          status.component.git_branch(),
          {
            provider = function()
              return vim.fn.expand("%:h") .. " "
            end,
            hl = { fg = "git_branch_fg" }
          },
          status.component.file_info(),
          status.component.git_diff(),
          status.component.diagnostics(),
          status.component.fill(),
          status.component.cmd_info(),
          status.component.fill(),
          status.component.lsp(),
          status.component.treesitter(),
          status.component.nav(),
          status.component.mode { surround = { separator = "right" } },
        }
      end,
    }
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
  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,
      }
    }
  }
}

