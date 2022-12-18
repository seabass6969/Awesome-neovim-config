local null_ls = require("null-ls")


local source = {
    null_ls.builtins.completion.spell.with({
        filetypes = {"markdown"}
    }),
    null_ls.builtins.diagnostics.vale 
}
null_ls.setup({sources = source})
