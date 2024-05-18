require("sulista.remap")
require("sulista.set")
require("sulista.lazy_init")


--Color and Bg
vim.opt.termguicolors = true
vim.cmd.colorscheme('catppuccin-mocha')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
