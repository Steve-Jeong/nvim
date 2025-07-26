return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- 다른 플러그인보다 먼저 로드되도록 우선순위 설정
  config = function()
    require("catppuccin").setup({
       -- available color scheme : latte, frappe, macchiato, mocha
       flavour = "macchiato"
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
