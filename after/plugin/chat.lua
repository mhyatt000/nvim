-- Lua

vim.keymap.set('n', '<leader>gho', ':CopilotChatOpen<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>gho', ':CopilotChatOpen<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghc', ':CopilotChatClose<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghc', ':CopilotChatClose<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghx', ':CopilotChatToggle<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghx', ':CopilotChatToggle<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghr', ':CopilotChatReset<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghr', ':CopilotChatReset<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghs', ':CopilotChatSave<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghs', ':CopilotChatSave<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghl', ':CopilotChatLoad<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghl', ':CopilotChatLoad<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghd', ':CopilotChatDebugInfo<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghd', ':CopilotChatDebugInfo<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghe', ':CopilotChatExplain<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghe', ':CopilotChatExplain<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ght', ':CopilotChatTests<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ght', ':CopilotChatTests<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghf', ':CopilotChatFix<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghf', ':CopilotChatFix<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>gho', ':CopilotChatOptimize<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>gho', ':CopilotChatOptimize<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ghd', ':CopilotChatDocs<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ghd', ':CopilotChatDocs<CR>', {noremap = true, silent = true})
