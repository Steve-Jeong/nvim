return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash", "c", "dockerfile", "go", "javascript", "json", "lua", "markdown",
      "markdown_inline", "nginx", "prisma", "python", "query", "rust", "sql",
      "ssh_config", "typescript", "vim", "vimdoc",
    },
    sync_install = false,
    auto_install = true,

    highlight = {
      enable = true,
      -- 참고: 원본 설정에서 'disable' 키가 두 번 정의되었습니다.
      -- Lua에서는 마지막에 정의된 값만 적용되므로 함수 방식만 남겼습니다.
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true -- 파일이 100KB보다 크면 하이라이팅 비활성화
        end
      end,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
