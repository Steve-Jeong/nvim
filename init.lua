-- init.lua

-- 전역 변수 설정 전에 확인
if vim.g.mapleader == nil then
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "
end

-- 핵심 설정 불러오기
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- 플러그인 매니저(lazy.nvim) 설정 불러오기
require("plugins")
