vim.keymap.set("n","<leader><leader>", ":")
vim.keymap.set("n","<leader>wsp", ":w<cr>:so<cr>:PackerSync<cr>")
-- no mouse
vim.o.mouse = ""

-- find/replace
vim.keymap.set("n","<leader>fr", ":%s/")

-- movement
vim.keymap.set("n","W", "b")
vim.keymap.set("n","L", "$")
vim.keymap.set("n","H", "0")

-- copy to clipboard
vim.keymap.set("n","<leader>c", "\"+")
vim.keymap.set("v","<leader>c", "\"+")

-- line management
vim.keymap.set("n", "cl", "ddO<esc>") -- clear
vim.keymap.set("n", "ds", "d0") -- delete to start
vim.keymap.set("n", "de", "D") -- delete to end
vim.keymap.set("n", "ys", "y0") -- yank to start
vim.keymap.set("n", "ye", "y$") -- yank to end

vim.keymap.set("n","o", "o<esc>")
vim.keymap.set("n","O", "O<esc>")

vim.keymap.set("n", "s", "a<CR><esc>")
vim.keymap.set("n", "S", "i<CR><esc>")

-- insert mode keymaps
vim.keymap.set("i","ii", "<esc>")

-- 
-- primeagen
--
-- file explore
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
-- move selected lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- join without moving 
vim.keymap.set("n", "J", "mzJ`z")
-- page without moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- delete to the void register... doesnt affect paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- ctrl-c is weird
vim.keymap.set("i", "<C-c>", "<Esc>")
-- Q wouldve quit with no saving
vim.keymap.set("n", "Q", "<nop>")
-- replace all current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- 
-- end primeagen
--

-- vim.keymap.set( "n", "<leader>lint", function()  vim.api.system(":! black % &&  isort %<cr>") end)

function tree()
    vim.cmd(50 .. "vsplit | terminal tree")
end
vim.api.nvim_set_keymap('n', '<leader>tre', ":lua tree()<CR>", { noremap = true, silent = true })


function run_python()
    local height = math.floor(vim.fn.winheight(0) / 4)
    vim.cmd(height .. "split | terminal python3 " .. vim.fn.expand('%'))
end
vim.api.nvim_set_keymap('n', '<leader>rp', ":lua run_python()<CR>", { noremap = true, silent = true })

function run_bash()
    local height = math.floor(vim.fn.winheight(0) / 4)
    vim.cmd(height .. "split | terminal bash " .. vim.fn.expand('%'))
end
vim.api.nvim_set_keymap('n', '<leader>rb', ":lua run_bash()<CR>", { noremap = true, silent = true })

-- tmux

-- making splits
vim.keymap.set('n', '<leader>b\'', ':split<cr><leader>b<down>', {noremap = true})
vim.keymap.set('n', '<leader>b5', ':vsplit<cr><leader>b<right>', {noremap = true})

-- close buffer
vim.keymap.set('n', '<leader>bd', ':close<cr>', {noremap = true})


-- changing between splits
vim.keymap.set('n', '<leader>bh', '<C-w>h')
vim.keymap.set('n', '<leader>bj', '<C-w>j')
vim.keymap.set('n', '<leader>bk', '<C-w>k')
vim.keymap.set('n', '<leader>bl', '<C-w>l')

vim.keymap.set('n', '<leader>b<left>', '<C-w>h')
vim.keymap.set('n', '<leader>b<down>', '<C-w>j')
vim.keymap.set('n', '<leader>b<up>', '<C-w>k')
vim.keymap.set('n', '<leader>b<right>', '<C-w>l')
