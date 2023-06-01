-- function OpenTree()
--     require("nvim-tree").view.View.win_opts.relativenumber = true
-- end
vim.keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>", { silent = true })

require("nvim-tree").setup({
    disable_netrw = true,
    hijack_netrw = true,
    update_cwd = true,
    view = {
        number = true,
        relativenumber = true
    },
})
