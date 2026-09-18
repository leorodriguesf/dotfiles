return {
    "nvim-telescope/telescope.nvim",
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = { "%.git/" },
                additional_args = function() return { "--hidden" } end,
            },
            pickers = {
                find_files = { hidden = true }
            }
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files)
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles)
        vim.keymap.set("n", "<leader>sg", builtin.live_grep)
        vim.keymap.set("n", "<leader>sb", builtin.buffers)
    end
}
