-- Lua

vim.keymap.set('n', '<leader>ghv', ':CopilotChat<CR>')
vim.keymap.set('v', '<leader>ghv', ':CopilotChat<CR>')

vim.keymap.set('n', '<leader>ghc', ':CopilotChatClose<CR>')
vim.keymap.set('v', '<leader>ghc', ':CopilotChatClose<CR>')

vim.keymap.set('n', '<leader>ghx', ':CopilotChatToggle<CR>')
vim.keymap.set('v', '<leader>ghx', ':CopilotChatToggle<CR>')

vim.keymap.set('n', '<leader>ghr', ':CopilotChatRefactor<CR>')
vim.keymap.set('v', '<leader>ghr', ':CopilotChatRefactor<CR>')

vim.keymap.set('n', '<leader>ghR', ':CopilotChatReview<CR>')
vim.keymap.set('v', '<leader>ghR', ':CopilotChatReview<CR>')

vim.keymap.set('n', '<leader>ghs', ':CopilotChatSave<CR>')
vim.keymap.set('v', '<leader>ghs', ':CopilotChatSave<CR>')

vim.keymap.set('n', '<leader>ghl', ':CopilotChatLoad<CR>')
vim.keymap.set('v', '<leader>ghl', ':CopilotChatLoad<CR>')

vim.keymap.set('n', '<leader>ghd', ':CopilotChatDebugInfo<CR>')
vim.keymap.set('v', '<leader>ghd', ':CopilotChatDebugInfo<CR>')

vim.keymap.set('n', '<leader>ghe', ':CopilotChatExplain<CR>')
vim.keymap.set('v', '<leader>ghe', ':CopilotChatExplain<CR>')

vim.keymap.set('n', '<leader>ght', ':CopilotChatTests<CR>')
vim.keymap.set('v', '<leader>ght', ':CopilotChatTests<CR>')

vim.keymap.set('n', '<leader>ghf', ':CopilotChatFix<CR>')
vim.keymap.set('v', '<leader>ghf', ':CopilotChatFix<CR>')

vim.keymap.set('n', '<leader>gho', ':CopilotChatOptimize<CR>')
vim.keymap.set('v', '<leader>gho', ':CopilotChatOptimize<CR>')

vim.keymap.set('n', '<leader>ghd', ':CopilotChatDocs<CR>')
vim.keymap.set('v', '<leader>ghd', ':CopilotChatDocs<CR>')

-- local function quick_chat()
    -- local input = vim.fn.input("Quick Chat: ")
    -- if input ~= "" then
        -- require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
    -- end
-- end

-- vim.api.nvim_set_keymap('n', '<leader>aq', ':lua quick_chat()<CR>')
