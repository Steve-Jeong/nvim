return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.8',
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<C-p>",     "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live grep" },
  },
  config = function()
    -- Telescope의 추가적인 설정이 필요하면 여기에 작성합니다.
    require("telescope").setup({
      -- 예: defaults = { ... }
    })
  end,
}
