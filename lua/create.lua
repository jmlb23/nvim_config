function create(args)
	local Path = require('plenary.path')

	local my_file = Path:new(args.args)
	my_file:touch({ parents = true })
end

vim.api.nvim_create_user_command('Create', create, { desc = 'Create files on the given path', nargs = '*' })

