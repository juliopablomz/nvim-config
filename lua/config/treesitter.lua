require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c", "cpp", "vim", "lua", "markdown"
  },

  auto_install = true,

  highlight = {
    enable = true
  }
}


