-- Option settings

local options = {
	-- character code setting 
	encoding = "utf-8",
	fileencodings = {"utf-8", "iso-2022-jp", "euc-jp", "sjis"},
	fileformats = {"unix", "dos", "mac"},

	-- fold setting
	foldmethod = "indent",
	foldcolumn = "1",
	foldlevel = 255,

	-- row setting
	number = true,
	swapfile = false,

	-- cursor setting
	cursorline = true,

	-- clipboard setting
	clipboard = "unnamedplus",

	-- indent setting
	smartindent = true,

	-- floating window setting
	pumblend = 10,
	termguicolors = true,

	-- change dir
  -- autochdir = true,

	-- indent setting
	expandtab = true,
	tabstop = 2

}

for k, v in pairs(options) do
	vim.opt[k] = v
end
