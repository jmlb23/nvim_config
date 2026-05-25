return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    tag = "3.41.0",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
    filesystem = {
      use_libuv_file_watcher = false, 
      filtered_items = {
        visible = true, 
        hide_dotfiles = false,
        hide_gitignored = true,
      },
    },
  },
  }
}
