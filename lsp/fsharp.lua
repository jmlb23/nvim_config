return {
  cmd = { 'fsautocomplete', '--use-fcs-transparent-compiler', '--adaptive-lsp-server-enabled' },
  filetypes = { 
      'fsharp'
  },
  root_markers = {
    -- weird as fuck how this works, due to being a table
    -- a function is attached and will be iterated and called
    -- so will pattern match the name against the pattern
    -- from the root of the project recusively until a match is found
    function(name) return name:match("%.sln$") ~= nil end,
    function(name) return name:match("%.fsproj$") ~= nil end,
  },
  init_options = {
    AutomaticWorkspaceInit = true,
  },
}

