return {
{
        'folke/todo-comments.nvim',
        event = 'VimEnter',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = { signs = false }
    },

        { 'tpope/vim-sleuth' },

        { 'numToStr/Comment.nvim', opts = {} },
}
