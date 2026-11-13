return {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = {
        "rust-project.json",
        "MODULE.bazel",
        "WORKSPACE.bazel",
        "WORKSPACE",
        "Cargo.toml"
    },
    settings = {
        ["rust-analyzer"] = {
            check = {
                command = "clippy",
                workspace = false,
                allTargets = false,
                extraArgs = { "--no-deps" }
            },
            checkOnSave = true,
            diagnostics = {
                enable = true,
                experimental = {
                    enable = true
                }
            },
            files = {
                excludeDirs = {
                    ".git",
                    "bazel-bin",
                    "bazel-out",
                    "bazel-testlogs",
                    "bazel-Log"
                }
            }
        }
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
