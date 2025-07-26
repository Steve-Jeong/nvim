return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
      -- 기본 키맵
      -- <C-n> : 현재 단어와 같은 다음 단어 선택
      -- <C-Down>/<C-Up> : 커서 추가
      -- n/N : 다음/이전 매치로 이동
      -- q : 현재 커서 건너뛰기
      -- Q : 현재 커서 제거
      
      vim.g.VM_maps = {
        ["Find Under"] = '<C-n>',
        ["Find Subword Under"] = '<C-n>',
        ["Add Cursor Down"] = '<C-Down>',
        ["Add Cursor Up"] = '<C-Up>',
        ["Select All"] = '<C-L>',
        ["Visual All"] = '<C-L>',
        ["Start Regex Search"] = '<C-/>',
        ["Visual Regex"] = '<C-/>',
      }
    end
  }
}
