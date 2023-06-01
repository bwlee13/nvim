require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "javascript", "typescript", "rust", "c", "lua", "vim", "vimdoc", "query" },

    autotag = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = { "python" },
    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    -- indent = {
    --     enable = true
    -- },
    -- rainbow = {
    --     enable = true,
    --     extended_mode = true,
    --     disable = { "html" },
    --     max_file_lines = nil,
    --     colors = {
    --         "#9900e6",
    --         "#0e7c6b",
    --         "#D7BFDC",
    --         "#99ccff",
    --         "#68a0b0",
    --         "#946EaD",
    --         "#2eb8b8",
    --     },
    -- Highlight the entire buffer all at once
    -- list of languages you want to disable the plugin for
    -- disable = {},
    -- -- Which query to use for finding delimiters
    -- -- Highlight the entire buffer all at once
    -- },
}
