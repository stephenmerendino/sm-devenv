function SetupColors(color)
    color = color or "gruvbox"
    --color = color or "tokyonight"
    --color = color or "kanagawa-dragon"
    --color = color or "catppuccin"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetupColors()
