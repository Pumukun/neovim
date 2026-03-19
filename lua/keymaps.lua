local kset = vim.keymap.set
local opts = { noremap = true, silent = true }
local telescope_utils = require("telescope_utils")

kset('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
kset('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
kset('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
kset('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })

-- vim
kset('n', '<leader>nt', ':lua NumberToggle()<CR>', { noremap = true, silent = true })
kset('n', '<leader>qs', '<cmd>mks! session.vim<cr><cmd>wqall!<cr>', { noremap = true })

-- Telescope
kset('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
kset('n', '<leader>fc', telescope_utils.find_files_cpp, { desc = 'Find C++ files' })
kset('n', '<leader>fgg', '<cmd>Telescope live_grep<cr>', { noremap = true })
kset('n', '<leader>fgc', telescope_utils.live_grep_cpp, { desc = 'Livegrep C++ files' })
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


-- GitGutter
kset('n', '<leader>hl', '<cmd>GitGutterLineHighlightsToggle<cr><cmd>GitGutterLineNrHighlightsToggle<cr>', { noremap = true })
kset('n', '<leader>nh', '<cmd>GitGutterNextHunk<cr>', { noremap = true })
kset('n', '<leader>ph', '<cmd>GitGutterPrevHunk<cr>', { noremap = true })
kset('n', '<leader>uh', '<cmd>GitGutterUndoHunk<cr>', { noremap = true })
kset('n', '<leader>sh', '<cmd>GitGutterPreviewHunk<cr>', { noremap = true })
kset('n', '<leader>dh', '<cmd>GitGutterDiffOrig<cr>', { noremap = true })


-- dap
kset('n', '<F5>', function() require('dap').continue() end)
kset('n', '<F10>', function() require('dap').step_over() end)
kset('n', '<F11>', function() require('dap').step_into() end)
kset('n', '<F9>', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>k', function() require('dapui').eval() end)

-- other
kset('n', '<leader>rl', '<cmd>so /home/pumukun/.config/nvim/init.vim<cr>', { noremap = true, silent = true })
kset('n', '<leader>e', '<cmd>Ex<cr>')



