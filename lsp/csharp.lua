return {
  cmd = { 'csharp-ls'},
  filetypes = { "cs" },
  root_markers = {
    -- weird as fuck how this works, due to being a table
    -- a function is attached and will be iterated and called
    -- so will pattern match the name against the pattern
    -- from the root of the project recusively until a match is found
    function(name) return name:match("%.sln$") ~= nil end,
    function(name) return name:match("%.csproj$") ~= nil end,
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
