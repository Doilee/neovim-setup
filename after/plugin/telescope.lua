local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-o>', builtin.find_files, {})
vim.keymap.set('n', '<leader>o', builtin.git_files, {})
-- Needs RipGrep binary 'brew install ripgrep'
vim.keymap.set('n', '<leader>f', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
