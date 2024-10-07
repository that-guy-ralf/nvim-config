local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath})
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("config.config")
require("lazy").setup("plugins")
require("toggleterm-config")
require("whichkey")

vim.o.termguicolors = true
vim.o.background = "dark"
<<<<<<< HEAD
vim.cmd.colorscheme("oldworld")
=======
vim.cmd.colorscheme("gruvbox")
>>>>>>> fbb89a308d07b520220b09b09a23b66af9b26012
