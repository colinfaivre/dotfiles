-- Gitsigns
-- See `:help gitsigns.txt`
require('gitsigns').setup {
    signs = {
        add = { text = '░░' },
        change = { text = '░░' },
        delete = { text = '__' },
        topdelete = { text = '‾‾' },
        changedelete = { text = '~' },
    },
    current_line_blame = true,
}   