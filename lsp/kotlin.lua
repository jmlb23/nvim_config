return {
  cmd = { 'kotlin-lsp', 'run', '--stdio' },
  filetypes = { "kotlin" },
  root_markers = {
    'build.gradle.kts',
    'build.gradle',
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
