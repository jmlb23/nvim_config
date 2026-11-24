return {
    cmd = { "haskell-language-server-wrapper", "lsp" },
    filetypes = { "haskell" },
    root_markers = {
        function(name) return name:match("%.cabal$") ~= nil end,
    },
    capabilities = {
        workspace = {
            didChangeWatchedFiles = {
                dynamicRegistration = true
            }
        },
        textDocument = {
            diagnostic = {
                dynamicRegistration = true,
                relatedDocumentSupport = true
            }
        }
    }
}
