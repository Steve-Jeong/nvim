return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "lua_ls", "ts_ls", "gopls", "cssls", "dockerls", 
          "docker_compose_language_service", "eslint", "html", "jsonls", "pylsp",
          "tailwindcss"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()  
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.eslint.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.tailwindcss.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover)   -- K를 누르면 context정보를 보여줌 
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition)  --  gd를 누르면 정의 파일로 이동
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)  -- 오류시 <leader>ca를 누르면 code action을 보여줌.
    end
  }
}
