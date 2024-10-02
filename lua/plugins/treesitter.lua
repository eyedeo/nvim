return {
    "nvim-treesitter/nvim-treesitter", 
    config=function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            sync_install=false,
            auto_install=true,
            highlight = {
                enable=true,
            },
        })
    end,
}
