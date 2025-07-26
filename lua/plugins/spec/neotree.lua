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
  },
  opts = {
    -- Neo-tree의 옵션을 여기에 설정할 수 있습니다.
    -- 예: window = { width = 30 },
  },
}
