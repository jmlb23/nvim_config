-- install treesitter for language if not installed
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function(args)
        local lang = args.match
        local ignore = {
            ['neo-tree'] = true,
            ['flix'] = true,
            ['mason_backdrop'] = true,
            ['blink-cmp-menu'] = true,
            help = true,
            gitcommit = true,
            mason = true
        }

        if
            ignore[lang]
        then
            return
        end

        if
            not pcall(vim.treesitter.language.inspect, lang)
        then
            require("nvim-treesitter").install({ lang, async = true })
        end
    end,
})
