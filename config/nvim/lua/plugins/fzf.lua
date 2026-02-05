return {
    {
        -- installs the fzf binary, fzf-lua is a lua wrapper around the binary 
        "junegunn/fzf",
        build = "./install --bin",
    },
    {
        "ibhagwan/fzf-lua",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons", "junegunn/fzf" },
        cmd = "FzfLua",
        keys = {
            { "<Leader>f", "<cmd>FzfLua files<cr>", desc = "Find files" },
            { "<Leader>g", "<cmd>FzfLua live_grep<cr>", desc = "Live grep" },
        },
        opts = {
          fzf_bin = vim.fn.stdpath("data") .. "/lazy/fzf/bin/fzf",
        }
    }
}
