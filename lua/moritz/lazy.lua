local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "moritz.plugins" }, { import = "moritz.plugins.lsp" } }, {
  install = {
    colorscheme = { "catppuccin-frappe" },
  },
  checker = {
    enabled = true,
    frequency = 604800, -- check for updates once a week
  },
  change_detection = {
    notify = false,
  },
})
