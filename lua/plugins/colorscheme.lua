return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  { "baliestri/aura-theme", name = "aura-theme" },  
  { "rose-pine/neovim", name = "rose-pine" },
  { "catppuccin/nvim", name = "catppuccin" },
  { 'sainnhe/everforest', lazy = false, priority = 1000 },
  { "eldritch-theme/eldritch.nvim", lazy = false, priority = 1000, opts = {}},
  { "akinsho/horizon.nvim", version= "*" },
  { "sho-87/kanagawa-paper.nvim", lazy = false, opts = {}},
  { 'tanvirtin/monokai.nvim' },
  { 'olivercederborg/poimandres.nvim',
      lazy = false,
      priority = 1000,
      config = function() require('poimandres').setup {} end 
  },
  { 'shaunsingh/moonlight.nvim' }
}
