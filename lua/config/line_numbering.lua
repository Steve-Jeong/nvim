-- >>>=== line number setting start ===
-- Enable line numbers globally
vim.opt.number = true
vim.opt.relativenumber = true

-- Create a self-clearing autocommand group
local lineNumberGroup = vim.api.nvim_create_augroup("LineNumberSettings", { clear = true })

-- Use absolute line numbers in Insert Mode
vim.api.nvim_create_autocmd("InsertEnter", {
    group = lineNumberGroup,
    callback = function()
        vim.opt.relativenumber = false
    end
})

-- Use relative line numbers in Normal Mode
vim.api.nvim_create_autocmd("InsertLeave", {
    group = lineNumberGroup,
    callback = function()
        vim.opt.relativenumber = true
    end
})
-- <<<=== line number setting end ===
