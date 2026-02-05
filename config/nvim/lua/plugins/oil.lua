return {
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        keymaps = {
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", {desc = "Open parent directory"})
        },
        lazy = false,
    }
}
