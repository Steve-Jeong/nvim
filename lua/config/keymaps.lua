-- lua/config/keymaps.lua

local keymap = vim.keymap

-- 이 파일에서는 플러그인과 무관한 핵심 키맵을 설정합니다.
-- 예: 창 이동, 버퍼 이동 등

-- Insert 모드에서 'jk'를 연속으로 누르면 Normal 모드로 전환 (Esc와 동일)
keymap.set('i', 'jk', '<Esc>', {
  desc = "에디트(Insert) 모드 종료",
})

-- 창(pane) 간 이동
keymap.set('n', '<C-h>', '<C-w>h', { desc = "왼쪽 창으로 이동" })
keymap.set('n', '<C-Left>', '<C-w>h', { desc = "왼쪽 창으로 이동" })
keymap.set('n', '<C-j>', '<C-w>j', { desc = "아래쪽 창으로 이동" })
keymap.set('n', '<C-Down>', '<C-w>j', { desc = "아래쪽 창으로 이동" })
keymap.set('n', '<C-k>', '<C-w>k', { desc = "위쪽 창으로 이동" })
keymap.set('n', '<C-Up>', '<C-w>k', { desc = "위쪽 창으로 이동" })
keymap.set('n', '<C-l>', '<C-w>l', { desc = "오른쪽 창으로 이동" })
keymap.set('n', '<C-Right>', '<C-w>l', { desc = "오른쪽 창으로 이동" })

-- clear search highlight
keymap.set('n', '<leader>h', ':nohlsearch<CR>', { desc = '검색 하이라이트 지우기' })
