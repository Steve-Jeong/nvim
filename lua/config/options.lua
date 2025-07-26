-- lua/config/options.lua

local opt = vim.opt

-- 탭 및 들여쓰기
opt.expandtab = true     -- 탭을 공백으로 변환
opt.tabstop = 2          -- 탭 너비
opt.softtabstop = 2      -- 편집 시 탭 너비
opt.shiftwidth = 2       -- 자동 들여쓰기 너비

-- UI 관련
opt.number = true        -- 줄 번호 표시
opt.relativenumber = true -- 상대 줄 번호 표시
opt.cursorline = true    -- 현재 줄 하이라이트
opt.termguicolors = true -- 터미널에서 True Color 사용

-- 검색 관련
opt.hlsearch = true      -- 검색어 하이라이트
opt.incsearch = true     -- 점진적 검색
opt.ignorecase = true    -- 검색 시 대소문자 무시
opt.smartcase = true     -- 검색어에 대문자가 있으면 대소문자 구분

-- 기타
opt.scrolloff = 8        -- 커서 위/아래로 최소 8줄 유지
opt.sidescrolloff = 8    -- 커서 좌/우로 최소 8줄 유지
opt.mouse = "a"          -- 모든 모드에서 마우스 사용
opt.breakindent = true   -- 줄바꿈 시 들여쓰기 유지

-- 키맵 입력 대기 시간 설정 (기본값 1000ms)
opt.timeoutlen = 500     -- 500ms (0.5초)로 줄임

