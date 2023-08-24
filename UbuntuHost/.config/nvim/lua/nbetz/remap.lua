-- Set in "normal" mode, if "leader+pv" is pressed, run command :Ex
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
