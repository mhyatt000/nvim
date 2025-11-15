vim.keymap.set("n", "<leader>co", "<cmd>GitConflictChooseOurs<CR>", { desc = "Choose ours" })
vim.keymap.set("n", "<leader>ct", "<cmd>GitConflictChooseTheirs<CR>", { desc = "Choose theirs" })
vim.keymap.set("n", "<leader>cb", "<cmd>GitConflictChooseBoth<CR>", { desc = "Choose both" })
vim.keymap.set("n", "<leader>c0", "<cmd>GitConflictChooseNone<CR>", { desc = "Choose none" })
vim.keymap.set("n", "<leader>cn", "<cmd>GitConflictNextConflict<CR>", { desc = "Next conflict" })
vim.keymap.set("n", "<leader>cN", "<cmd>GitConflictPrevConflict<CR>", { desc = "Prev conflict" })
vim.keymap.set("n", "<leader>cl", "<cmd>GitConflictListQf<CR>", { desc = "List conflicts in quickfix" })

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "GitConflictIncoming", { bg = "#2e5049" })  -- muted green
    vim.api.nvim_set_hl(0, "GitConflictCurrent",  { bg = "#394b70" })  -- muted blue
  end,
})

-- Apply once now (in case your theme already loaded)
vim.api.nvim_set_hl(0, "GitConflictIncoming", { bg = "#2e5049" })
vim.api.nvim_set_hl(0, "GitConflictCurrent",  { bg = "#394b70" })
vim.api.nvim_set_hl(0, "GitConflictMarker",   { bg = "#494b70" })

-- muted groups
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "GitConflictIncoming", { bg = "#2e5049" })
    vim.api.nvim_set_hl(0, "GitConflictCurrent",  { bg = "#394b70" })
    vim.api.nvim_set_hl(0, "GitConflictMarker",   { fg = "#9aa0a6", bg = "NONE" })
  end,
})
-- apply once now
vim.cmd("doautocmd ColorScheme")

-- overlay the three marker lines with high-priority extmarks
local ns = vim.api.nvim_create_namespace("git_conflict_marker_ns")
local function rehighlight(buf)
  if not vim.api.nvim_buf_is_loaded(buf) then return end
  vim.api.nvim_buf_clear_namespace(buf, ns, 0, -1)
  local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
  for i, l in ipairs(lines) do
    if l:match("^<<<<<<<") or l:match("^=======") or l:match("^>>>>>>>") then
      vim.api.nvim_buf_set_extmark(buf, ns, i - 1, 0, {
        end_col = #l,
        hl_group = "GitConflictMarker",
        priority = 300,      -- > syntax/TS
      })
    end
  end
end

vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "TextChangedI", "BufWritePost" }, {
  callback = function(args) rehighlight(args.buf) end,
})
