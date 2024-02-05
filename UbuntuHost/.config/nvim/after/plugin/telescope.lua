local builtin = require('telescope.builtin')

-- Keybinding for fuzzy search files (globally)
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- Keymap for passing on string to "grep"
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Keymap for fuzzy search files within a git repo
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

