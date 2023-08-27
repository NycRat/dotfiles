require("nvim-tree").setup({
    view = {
        mappings = {
            list = {{key = "u", action = "dir_up"}, {key = "z", action = "cd"}}
        },
        side = "right",
        width = 40
    },
    renderer = {
        special_files = {
            -- "Cargo.toml",
            -- "Makefile",
            -- "README.md",
            -- "readme.md",
            -- ".gitignore",
        }
    },
    actions = {open_file = {quit_on_open = true}},
    filters = {dotfiles = false, custom = {"^.DS_Store$", "^\\.git$"}},
    git = {enable = true, ignore = false, timeout = 500}
})
