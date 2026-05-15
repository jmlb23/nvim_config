return {
  cmd = { 'mojo-lsp-server' },
  filetypes = { 'mojo' },
  root_markers = {
    '.git',
    'compile_commands.json',
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
