vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        color_icons = true, -- whether or not to add the filetype icon highlights
        separator_style = "slant",
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
    }
}
