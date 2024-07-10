local kset = vim.keymap.set
local opts = { noremap = true, silent = true }

kset('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
kset('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
kset('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
kset('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })

-- vim
kset('n', '<leader>nt', ':lua NumberToggle()<CR>', { noremap = true, silent = true })

-- Telescope
kset('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
kset('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
kset('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
kset('n', '<leader>fs', '<cmd>Telescope git_status<cr>', { noremap = true })
kset('n', '<leader>te', '<cmd>Telescope toggleterm_manager<cr>', { noremap = true })

-- barbar
kset('n', '<M-Right>', '<cmd>BufferNext<cr>', opts)
kset('n', '<M-Left>', '<cmd>BufferPrevious<cr>', opts)
kset('n', '<C-x>', '<cmd>BufferClose<cr>', opts)

kset('n', '<M-l>', '<cmd>BufferNext<cr>', opts)
kset('n', '<M-h>', '<cmd>BufferPrevious<cr>', opts)

-- Re-order to previous/next
kset('n', '<M-[>', '<Cmd>BufferMovePrevious<CR>', opts)
kset('n', '<M-]>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
kset('n', '<M-1>', '<Cmd>BufferGoto 1<CR>', opts)
kset('n', '<M-2>', '<Cmd>BufferGoto 2<CR>', opts)
kset('n', '<M-3>', '<Cmd>BufferGoto 3<CR>', opts)
kset('n', '<M-4>', '<Cmd>BufferGoto 4<CR>', opts)
kset('n', '<M-5>', '<Cmd>BufferGoto 5<CR>', opts)
kset('n', '<M-6>', '<Cmd>BufferGoto 6<CR>', opts)
kset('n', '<M-7>', '<Cmd>BufferGoto 7<CR>', opts)
kset('n', '<M-8>', '<Cmd>BufferGoto 8<CR>', opts)
kset('n', '<M-9>', '<Cmd>BufferGoto 9<CR>', opts)
kset('n', '<M-0>', '<Cmd>BufferLast<CR>', opts)

kset('n', '<leader>bp', '<Cmd>BufferPick<CR>', opts)


-- other
kset('n', '<leader>rl', '<cmd>so /home/pumukun/.config/nvim/init.vim<cr>', { noremap = true, silent = true })
kset('n', '<leader>hl', '<cmd>GitGutterLineHighlightsToggle<cr><cmd>GitGutterLineNrHighlightsToggle<cr>', { noremap = true })
kset('n', '<leader>e', '<cmd>Ex<cr>')



