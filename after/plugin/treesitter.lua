-- require('nvim-treesitter.configs').setup({
-- 		ensure_installed = { "cpp", "c", "lua", "vim", "vimdoc", "query", "python", "javascript" },
-- 		highlight = {
-- 			enable = true,
-- 		},
-- 	})

require("nvim-treesitter.configs").setup({
  -- A list of parsers to ensure installed at start up.
  ensure_installed = { "cpp", "c", "lua", "vim", "vimdoc", "query", "python", "javascript", "html" },

  -- Install parsers synchronously (only applied when first installing)
  sync_install = false,

  -- Automatically install missing parsers when editing a supported file
  auto_install = true,

  -- List of language parsers to ignore installing
  ignore_install = { "help" },

  -- Enable syntax highlighting
  highlight = {
    enable = true,
    -- Set this to `true` if you want symlinks from initialised Nvim to install parsers in other places
    install = "auto",
    -- List of filetypes to disable highlighting for
    disable = { "yaml" },
    -- Or use a function for more dynamic disabling
    -- disable = function(lang, buf)
    --   return lang == "yaml"
    -- end,
  },

  -- Enable indentation
  indent = {
    enable = true,
    -- List of filetypes to disable indentation for
    disable = { "python" },
  },

  -- Additional functionalities (optional)
  -- You can add more plugins here, for example:
  -- incremental_selection = {
  --   enable = true,
  --   keymaps = {
  --     init_selection = "<c-space>",
  --     node_incremental = "<c-f>",
  --     scope_incremental = "<c-s>",
  --     node_decremental = "<c-b>",
  --   },
  -- },
  -- textobjects = {
  --   enable = true,
  --   select = {
  --     enable = true,
  --     -- ... keymaps for textobjects
  --   },
  -- },
})
