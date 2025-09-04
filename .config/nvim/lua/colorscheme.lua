require('kanagawa').setup({
    commentStyle = { italic = true },
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    transparent = false,
    dimInactive = false,
    terminalColors = true,
})

vim.cmd("colorscheme kanagawa")

