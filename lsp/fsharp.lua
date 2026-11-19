return {
  cmd = { 'fsautocomplete', '--adaptive-lsp-server-enabled' },
  filetypes = { 'fsharp' },
  root_markers = { '.git', 'global.json' },
  init_options = {
    AutomaticWorkspaceInit = true,
  },
}

