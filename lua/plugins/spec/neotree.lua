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
    { "<leader>n", function() vim.cmd("Neotree toggle") end, desc = "Toggle Neo-tree" },
    { "<C-h>", function() vim.cmd("wincmd h") end, desc = "Focus left window" },
    { "<C-l>", function() vim.cmd("wincmd l") end, desc = "Focus right window" },
  },
  opts = {
    window = {
      mappings = {
        ["<C-x>"] = "close_window",
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,    -- dot file을 볼 수 있게 한다.
      },
    },
    -- git status 렌더링을 담당하는 component의 설정을 filesystem 안에 넣을 경우,
    -- 아이콘을 아래와 같이 직접 지정해도 nvim-web-devions에서 가져와 표시한다.
    -- 따라서 filesystem에서 git_status를 최상위 레벨로 이동해야 한다.
    default_component_configs = {
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
        }
      }
    }
  },
}
