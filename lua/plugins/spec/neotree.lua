return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",  -- optional, but recommended
    "MunifTanjim/nui.nvim",
  },
  lazy = false,  -- neo-tree will lazily load itselt
  keys = {
    { "<C-n>", function() vim.cmd("Neotree toggle") end, desc = "Toggle Neo-tree" },
    { "<C-h>", function() vim.cmd("wincmd h") end, desc = "Focus left window" },
    { "<C-l>", function() vim.cmd("wincmd l") end, desc = "Focus right window" },
  },
  opts = {
    -- Neo-tree의 옵션을 여기에 설정할 수 있습니다.
    -- 예: window = { width = 30 },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,    -- dot file을 볼 수 있게 한다.
      },
      git_status = {
        symbols = {
          added     = "✚",
          modified  = "",
          deleted   = "✖",
          renamed   = "",
          untracked = "",
          ignored   = "",
          unstaged  = "",
          staged    = "",
          conflict  = "",
        }
      }
    }
  },
}
