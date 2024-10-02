return{
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        local logo = [[
   .--'''''''''--.
    .'      .---.      '.
    /    .-----------.    \
   /        .-----.        \
   |       .-.   .-.       |
   |      /   \ /   \      |
    \    | .-. | .-. |    /
    '-._| | | | | | |_.-'
   | '-' | '-' |
    \___/ \___/
    _.-'  /   \  `-._
   .' _.--|     |--._ '.
   ' _...-|     |-..._ '
    |     |
      '.___.'⠀⠀
            ]]
       logo = string.rep("\n", 5) .. logo
        require('dashboard').setup {
            theme = "doom",
            config = {
                center = {
                    {
                        icon = '  ',
                        icon_hl = '@comment.todo',
                        desc = 'Find file                   ',
                        desc_hl = 'AerialInterfaceIcon',
                        key = 'f',
                        keymap = '',
                       key_hl = '@string.html',
                        action = 'Telescope find_files',

                    },
                },
                footer = {},
                header = vim.split(logo, "\n"),
                packages={enable=false},
        
            }
        }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
