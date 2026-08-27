return {
  cmd = { 'dart', 'language-server'},
  filetypes = { "dart" },
  root_markers = {
    'pubspec.yaml',
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
