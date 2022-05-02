local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainters), or a list of languages
  sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)
  ignore_install = {""}, -- List of parsers to ignore installing
  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },

  indent = {
    enable = true,
    disable = { "yaml" },
  },

  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, -- list of languages you want to disable plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean, or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more thatn n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
}
