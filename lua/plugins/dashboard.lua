return {
    "glepnir/dashboard-nvim",
    config = function()
        local db = require('dashboard')
        local version = vim.version()

        db.custom_header = {
            '        ▄█          █          █▄          ',
            '      ▐██      ▄█  ███  █▄      ██▌        ',
            '     ▐██▌     ██████████████     ▐██▌      ',
            '    ████     ████████████████    ████      ',
            '    ▐█████  ██████████████████  █████▌     ',
            '    ████████████████████████████████       ',
            '     ███████▀▀████████████▀▀███████        ',
            '      █████▌  ▄▄ ▀████▀ ▄▄  ▐█████         ',
            '    ▄▄██████▄ ▀▀  ████  ▀▀ ▄██████▄▄       ',
            '    ██████████████████████████████████     ',
            '  ████████████████████████████████████     ',
            ' ██████   ███████▀▄██▄▀███████   ██████▌   ',
            '▐█████     ██████████████████      █████▌  ',
            ' ▐█████      ██████▀  ▀██████       █████▌ ',
            '  █████▄      ███        ███      ▄█████   ',
            '    ██████     █          █     ██████     ',
            '     █████                     █████       ',
            '      █████                   █████        ',
            '      ████   ▄            ▄    ████        ',
            '        ████ ██           ██ ████          ',
            '          ████████ ▄██▄ ████████           ',
            '         ████████████████████████          ',
            '         ████████████████████████          ',
            '          ▀█████████▀▀█████████▀           ',
            '            ▀███▀       ▀███▀              ',
        }
        -- db.custom_header = {
        --     '',
        --     '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        --     '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        --     '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        --     '⠀⠀⠀⠀⠀⠀⢰⣶⣶⣶⠀⣶⣶⣶⣶⠀⢰⣶⣶⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        --     '⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⣿⣿⣿⣿⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        --     '⠀⢠⣤⣤⣤⠀⢠⣤⣤⣤⠀⣤⣤⣤⣤⠀⢠⣤⣤⣤⠀⣰⣿⣿⣦⡀⠀⠀⠀⠀',
        --     '⠀⢸⣿⣿⣿⠀⢸⣿⣿⣿⠀⣿⣿⣿⣿⠀⢸⣿⣿⣿⠀⣿⣿⠹⣿⣷⣀⠀⠀⠀',
        --     '⠀⠘⠛⠛⠛⠀⠘⠛⠛⠛⠀⠛⠛⠛⠛⠀⠘⠛⠛⠛⢀⣿⣿⡀⠙⠿⠿⣿⣶⣆',
        --     '⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⠟⢁⣤⣴⣶⣾⡿⠋',
        --     '⣿⣿⣿⣛⣛⣛⣛⣿⣟⣛⣛⣻⣿⣟⣛⣛⣻⣿⣟⣋⣉⣠⣤⣾⣿⣟⣻⣍⠀⠀',
        --     '⢹⣿⣿⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠋⠀⠀⠀⠀⠀',
        --     '⠈⢻⣿⣿⣿⡿⠿⠿⠿⠛⠉⠀⠀⠀⠀⠀⢀⣠⣴⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀',
        --     '⠀⠀⠙⢿⣿⣿⣶⣦⣤⣤⣤⣤⣤⣴⣶⣿⣿⣿⣿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀',
        --     '⠀⠀⠀⠀⠈⠙⠛⠛⠿⠿⠿⠿⠿⠛⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        --     '',
        -- }


        -- db.custom_header = {
        --     "            :h-                                  Nhy`               ",
        --     "           -mh.                           h.    `Ndho               ",
        --     "           hmh+                          oNm.   oNdhh               ",
        --     "          `Nmhd`                        /NNmd  /NNhhd               ",
        --     "          -NNhhy                      `hMNmmm`+NNdhhh               ",
        --     "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
        --     "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
        --     "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
        --     "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
        --     " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
        --     " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
        --     " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
        --     " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
        --     "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
        --     "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
        --     "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
        --     "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
        --     "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
        --     "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
        --     "       //+++//++++++////+++///::--                 .::::-------::   ",
        --     "       :/++++///////////++++//////.                -:/:----::../-   ",
        --     "       -/++++//++///+//////////////               .::::---:::-.+`   ",
        --     "       `////////////////////////////:.            --::-----...-/    ",
        --     "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
        --     "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
        --     "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
        --     "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
        --     "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
        --     "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
        --     "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
        --     "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
        --     "                        .-:mNdhh:.......--::::-`                    ",
        --     "                           yNh/..------..`                          ",
        --     "                                                                    ",
        --     "N E O V I M - v " .. version.major .. "." .. version.minor,
        -- }
        -- db.custom_header = {
        --     '',
        --     '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ',
        --     '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
        --     '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ',
        --     '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
        --     '          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
        --     '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
        --     '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
        --     ' ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
        --     ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ',
        --     '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
        --     '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
        --     '     ⢰⣶  ⣶ ⢶⣆⢀⣶⠂⣶⡶⠶⣦⡄⢰⣶⠶⢶⣦  ⣴⣶     ',
        --     '     ⢸⣿⠶⠶⣿ ⠈⢻⣿⠁ ⣿⡇ ⢸⣿⢸⣿⢶⣾⠏ ⣸⣟⣹⣧    ',
        --     '     ⠸⠿  ⠿  ⠸⠿  ⠿⠷⠶⠿⠃⠸⠿⠄⠙⠷⠤⠿⠉⠉⠿⠆   ',
        --     '',
        -- }
        -- db.custom_header = {
        --     [[   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ]],
        --     [[    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]],
        --     [[          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ]],
        --     [[           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]],
        --     [[          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ]],
        --     [[   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ]],
        --     [[  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ]],
        --     [[ ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ]],
        --     [[ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ]],
        --     [[      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ]],
        --     [[       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ]],
        --     [[     ⢰⣶  ⣶ ⢶⣆⢀⣶⠂⣶⡶⠶⣦⡄⢰⣶⠶⢶⣦  ⣴⣶     ]],
        --     [[     ⢸⣿⠶⠶⣿ ⠈⢻⣿⠁ ⣿⡇ ⢸⣿⢸⣿⢶⣾⠏ ⣸⣟⣹⣧    ]],
        --     [[     ⠸⠿  ⠿  ⠸⠿  ⠿⠷⠶⠿⠃⠸⠿⠄⠙⠷⠤⠿⠉⠉⠿⠆   ]],
        -- }

        -- vim.g.dashboard_default_executive = 'telescope'
        -- vim.g.dashboard_custom_header = {
        --     [[   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ]],
        --     [[    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]],
        --     [[          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ]],
        --     [[           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]],
        --     [[          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ]],
        --     [[   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ]],
        --     [[  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ]],
        --     [[ ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ]],
        --     [[ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ]],
        --     [[      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ]],
        --     [[       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ]],
        --     [[     ⢰⣶  ⣶ ⢶⣆⢀⣶⠂⣶⡶⠶⣦⡄⢰⣶⠶⢶⣦  ⣴⣶     ]],
        --     [[     ⢸⣿⠶⠶⣿ ⠈⢻⣿⠁ ⣿⡇ ⢸⣿⢸⣿⢶⣾⠏ ⣸⣟⣹⣧    ]],
        --     [[     ⠸⠿  ⠿  ⠸⠿  ⠿⠷⠶⠿⠃⠸⠿⠄⠙⠷⠤⠿⠉⠉⠿⠆   ]],
        -- }
        --
        -- vim.g.dashboard_custom_section = {
        --     a = {description = {'  Find File          '}, command = 'Telescope find_files'},
        --     d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
        --     c = {description = {'  New File           '}, command = 'DashboardNewFile'},
        --     b = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
        --     -- e = {description = {'  Config             '}, command = 'edit ~/.config/nvim/init.lua'},
        -- }
        -- vim.g.dashboard_custom_footer = {'Do one thing, do it well - Unix Philosophy'}
        local icon_color = "Function"
        db.custom_center = {
            {
                desc = "Find File                     ",
                shortcut = "f",
                icon = "  ",
                icon_hl = { link = icon_color },
                action = "Telescope find_files",
            },
            {
                desc = "Recents                       ",
                shortcut = "r",
                icon = "  ",
                icon_hl = { link = icon_color },
                action = "Telescope oldfiles",
            },

            {
                desc = "Browse Files                  ",
                shortcut = ".",
                icon = "  ",
                icon_hl = { link = icon_color },
                action = "Telescope file_browser"
            },
            -- { shortcut = "<leader>fg", icon = " ", desc = "Find Word", action = "Telescope live_grep" },

            {
                desc = "New File                      ",
                shortcut = "n",
                icon = "  ",
                icon_hl = { link = icon_color },
                action = "DashboardNewFile",
            },

            -- { shortcut = "<leader>fm", icon = " ", desc = "Bookmark", action = "Telescope marks" },
            {
                desc = "Load Last Session             ",
                shortcut = "L",
                icon = "  ",
                icon_hl = { link = icon_color },
                action = "SessionLoad",
            },

            {
                desc = "Update Plugins                ",
                shortcut = "u",
                icon = "  ",
                icon_hl = { link = icon_color },
                action = "PackerUpdate",
            },
            {
                desc = "Setting                       ",
                shortcut = "s",
                icon = "  ",
                icon_hl = { link = icon_color },
                action = "edit $MYVIMRC",
            },
            {
                desc = "Exit                          ",
                shortcut = "q",
                icon = "  ",
                icon_hl = { link = icon_color },
                action = "exit",
            },
        }

        db.custom_footer = { "type  :help<Enter>  or  <F1>  for on-line help" }


        vim.api.nvim_create_autocmd('Filetype', {
            pattern = 'dashboard',
            group = vim.api.nvim_create_augroup('Dashboard_au', { clear = true }),
            callback = function()
                vim.cmd [[
                hi! link DashboardFooter NonText
                setlocal buftype=nofile
                setlocal nonumber norelativenumber nocursorline noruler
                nnoremap <buffer> f <cmd>Telescope find_files<CR>
                nnoremap <buffer> r <cmd>Telescope oldfiles<CR>
                nnoremap <buffer> . <cmd>Telescope file_browser<CR>
                nnoremap <buffer> n <cmd>DashboardNewFile<CR>
                nnoremap <buffer> <leader>en <cmd>DashboardNewFile<CR>
                nnoremap <buffer> L <cmd>SessionLoad<CR>
                nnoremap <buffer> u <cmd>PackerUpdate<CR>
                nnoremap <buffer> s <cmd>edit $MYVIMRC<CR>
                nnoremap <buffer> q <cmd>exit<CR>
            ]]
            end
        })
    end
}
