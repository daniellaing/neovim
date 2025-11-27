local M = {}

function M.check_installed(prog, nix_locate_path)
	-- Is the program installed?
	if os.execute('[ -x "$(command -v ' .. prog .. ')" ]') == 0 then
		return
	end

	-- Find the program
	local cmd_handle = io.popen(nix_locate_path .. " -w /bin/" .. prog)
	if cmd_handle == nil then
		vim.notify('Colud not locate packages containing "' .. prog .. '"', vim.log.levels.ERROR, {})
		return nil
	end

	local pkgs = {}
	for line in cmd_handle:lines() do
		local pname = string.gsub(line, "^(.*)%.out%s.*$", "%1")
		table.insert(pkgs, pname)
	end

	vim.notify(
		'"' .. prog .. '" is not installed but is found in the following packages:\n - ' .. table.concat(pkgs, "\n - "),
		vim.log.levels.WARN,
		{}
	)
end

return M
