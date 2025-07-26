-- lua/config/autocmds.lua

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- 파일 저장 시 필요한 상위 디렉토리 자동 생성
autocmd("BufWritePre", {
  group = augroup("AutoCreateDir", { clear = true }),
  pattern = "*",
  callback = function(ctx)
    local dir = vim.fn.fnamemodify(ctx.file, ":p:h")
    if not vim.loop.fs_stat(dir) then
      vim.fn.mkdir(dir, "p")
    end
  end,
})
