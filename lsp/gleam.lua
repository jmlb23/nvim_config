return {
  cmd = { 'gleam', 'lsp' },
  filetypes = { 'gleam' },
  root_markers = {
    'gleam.toml',
  },
  get_language_id = function(_, ftype)
    return ftype
  end,
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true,
      },
    },
    textDocument = {
      diagnostic = {
        dynamicRegistration = true,
        relatedDocumentSupport = true,
      },
    },
  },
}
