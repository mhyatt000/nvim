return {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
        'zbirenbaum/copilot.lua', -- or 'github/copilot.vim'
        'nvim-lua/plenary.nvim'   -- for curl, log wrapper
    },
    config = function()
        require('CopilotChat').setup({
            debug = true, -- Enable debugging
            context = 'buffers', -- Default context to use, 'buffers', 'buffer' or none (can be specified manually in prompt via @).
            -- default window options
            window = {
                layout = 'float',
                -- Options below only apply to floating windows
                relative = 'editor', -- 'editor', 'win', 'cursor', 'mouse'
                border = 'single', -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
                width = 0.8, -- fractional width of parent
                height = 0.6, -- fractional height of parent
                row = nil, -- row position of the window, default is centered
                col = nil, -- column position of the window, default is centered
                title = 'Copilot Chat', -- title of chat window
                footer = nil, -- footer of chat window
                zindex = 1, -- determines if window is on top or below other floating windows
            },
            -- Insert the rest of your configuration here
        })
    end
    -- Example if you want to lazy load on certain commands:
    -- cmd = {'YourCommandHere', 'AnotherCommand'}
}
