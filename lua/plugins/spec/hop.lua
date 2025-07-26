-- lua/plugins/spec/hop.lua

return {
  "phaazon/hop.nvim",
  branch = "v2", -- hop.nvim 2.x 버전 사용을 권장합니다.
  config = function()
    -- 기본 설정을 불러옵니다.
    require("hop").setup()
  end,

  -- 사용자께서 요청하신 키맵입니다.
  keys = {
    {
      "<leader>s", -- '스페이스바 + s'
      function()
        require("hop").hint_char1()
      end,
      mode = { "n", "v", "o" },
      desc = "한 글자로 이동 (Hop)",
    },
    {
      "<leader>S", -- '스페이스바 + Shift + s'
      function()
        require("hop").hint_char2()
      end,
      mode = { "n", "v", "o" },
      desc = "두 글자로 이동 (Hop)",
    },
  },
}
