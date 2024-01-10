return function()
    vim.api.nvim_create_user_command('Date', function()
        local date = os.date("%Y %m %d")
        vim.api.nvim_put({date}, 'c', false, true)
    end, { nargs = 0 })
end
