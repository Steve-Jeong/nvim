-- lua/config/keymaps.lua

local keymap = vim.keymap

-- 이 파일에서는 플러그인과 무관한 핵심 키맵을 설정합니다.
-- 예: 창 이동, 버퍼 이동 등
-- 현재 설정에서는 플러그인 키맵만 있으므로 비워둡니다.
-- keymap.set('n', '<leader>w', '<C-w>')

-- Insert 모드에서 'jk'를 연속으로 누르면 Normal 모드로 전환 (Esc와 동일)
keymap.set('i', 'jk', '<Esc>', {
  desc = "에디트(Insert) 모드 종료",
})
