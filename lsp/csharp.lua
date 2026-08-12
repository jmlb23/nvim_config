return {
  cmd = { 'csharp-ls'},
  filetypes = { "cs" },
  root_markers = {
    '*.csproj',
    '*.slnx'
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
