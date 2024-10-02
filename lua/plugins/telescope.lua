return {
    'nvim-telescope/telescope.nvim',  dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
    { "<C-p>", require("telescope.builtin").find_files, "Telescope Find Files" },
    { "<C-g>", require("telescope.builtin").live_grep, "Telescope Live Grep" },
    },

    config = function()
        require("telescope").setup({
            pickers = {
                find_files = {
                    find_command = {
                        "fdfind",
                        "--unrestricted",
                    },
                },
            },
        })
    end,

}
