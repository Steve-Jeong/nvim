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
    window = {
      mappings = {
        ["<C-x>"] = "close_window",
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,    -- dot file을 볼 수 있게 한다.
      },
      git_status = {
        symbols = {
          added     = "A",
          modified  = "M",
          deleted   = "D",
          renamed   = "R",
          untracked = "?",
          ignored   = "I",
          unstaged  = "U",
          staged    = "S",
          conflict  = "C",
-- 아래 심벌을 위 문자로 대체했는데도 심벌로 나온다. 
-- nvim-web-devicons 때문이라는데, 이것을 비활성화 하면 탐색기 아이콘도 다 사라진다.          
--          added     = "✚",
--          modified  = "",
--          deleted   = "✖" ,
--          renamed   = "",
--          untracked = "",
--          ignored   = "",
--          unstaged  = "",
--          staged    = "",
--          conflict  = "",
        }
      }
    }
  },
}
