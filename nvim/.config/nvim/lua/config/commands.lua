vim.api.nvim_create_user_command("OpalEslintAsgard", function()
	vim.opt.makeprg = "npm run eslint -- --quiet --format unix"
	vim.cmd([[make]])
end, { nargs = 0 })

local augroup = vim.api.nvim_create_augroup("dalford", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	pattern = "typescript,typescriptreact",
	group = augroup,
	command = "compiler tsc | setlocal makeprg=npx\\ tsc\\ --noEmit",
})
