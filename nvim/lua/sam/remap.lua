vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)


vim.api.nvim_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
