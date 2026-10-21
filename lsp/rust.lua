return {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = {
    "rust-project.json",
    "MODULE.bazel",
    "WORKSPACE.bazel",
    "WORKSPACE",
  },
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = false,
      diagnostics = {
        enable = true,
        experimental = {
          enable = true,
        },
      },
      files = {
        excludeDirs = {
          ".git",
          "bazel-bin",
          "bazel-out",
          "bazel-testlogs",
          "bazel-Log",
        },
      },
    },
  },
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
