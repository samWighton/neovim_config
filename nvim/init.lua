require('plugins')

vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrap = false

vim.g.mapleader = " "
-- vim.g.to_co = 256
vim.g.colorscheme = "base16-default-dark"
vim.g.termguicolors = 1

vim.g.ignorecase = true
vim.g.smartcase = true

vim.g.background = "dark"

vim.opt.laststatus = 0

vim.opt.scrolloff = 5

vim.g.colorscheme = "default"

-- vim.g.transparent_enabled = true

vim.cmd([[ colorscheme default ]])
vim.cmd([[ nnoremap("<C-d", "<C-d"zz) ]])
vim.cmd([[ nnoremap("<C-u", "<C-u"zz) ]])

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- map <leader>h :noh<CR>

-- vim.api.nvim_set_keymap("n","h",":w" ,opts)
-- map("n", "<leader>h", ":nohlsearch<CR>", { silent = true })
map("n", "<leader>e", ":Explore<return>", {})
map("n", "<leader>n", ":Texplore<return>", {})
