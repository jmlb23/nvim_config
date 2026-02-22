-- install treesitter for language if not installed
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function(args)
        local lang = args.match
        local unrecognised = {
            ['neo-tree'] = true,
            help = true,
            gitcommit = true
        }
        if
            not pcall(vim.treesitter.language.inspect, lang) and
            not unrecognised[lang]
        then
            require("nvim-treesitter").install({ lang })
        end
    end,
})
